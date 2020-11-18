class ConversationsController < ApplicationController 
    # Authenticates that the user is logged in before starting a conversation
    before_action :authenticate_user!

    def index 
        @users = User.all 
        @conversations = Conversation.all
    end

    # Takes the 2 users - the potential buyer and the seller, and creates a conversation between them. 
    # The 'between' scope is set out in the Conversation model 
    def create 
        # If there is an existing conversation between the 2 parties, it will be displayed. Otherwise, a new conversation will be created.
        if Conversation.between(params[:sender_id], params[:recipient_id]).present?
            @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
        else
            @conversation = Conversation.create!(conversation_params)
        end
        redirect_to conversation_messages_path(@conversation)
    end

    private 
        def conversation_params
            params.permit(:sender_id, :recipient_id)
        end
end