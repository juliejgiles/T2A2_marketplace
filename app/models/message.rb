class Message < ApplicationRecord
    belongs_to :conversation
    belongs_to :user
    # validates that the message must have a body, and the foreign key references 'conversation_id' and 'user_id' must exist
    validates_presence_of :body, :conversation_id, :user_id

    # helper method to find the time format of the message
    def message_time
        created_at.strftime("%m/%d/%y at %l:%M %p")
    end
end
