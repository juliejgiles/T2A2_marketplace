module StickersHelper

    def sticker_author(sticker)
        user_signed_in? && current_user.id == sticker.user_id
    end 

end
