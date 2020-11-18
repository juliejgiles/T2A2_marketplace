class MessagesController < ApplicationController
    #By the time a user is sending a message, they are already authenticated by the Conversations controller so there's no need to repeat it here
    before_action :find_conversation 


    def index
        @messages = @conversation.messages

        #A helper that loads more messages on scroll if there are a lot of messages
        if @messages.length > 10
            @over_ten = true
            @messages = @messages[-10..-1]
        end

        if params[:m]
            @over_ten = false
            @messages = @conversation.messages
        end

        @message = @conversation.messages.new
    end

    def create
        @message = @conversation.messages.new(message_params)
        if @message.save
            redirect_to conversation_messages_path(@conversation)
        end
    end 

    def new
        @message = @conversation.messages.new
    end 

    private 
    #Rails Strong Params which permits the :body and :user_id params through
    def message_params
        params.require(:message).permit(:body, :user_id)
    end

    #searches for the conversation based on the params conversation_id via the url
        def find_conversation 
            @conversation = Conversation.find(params[:conversation_id])
        end
end