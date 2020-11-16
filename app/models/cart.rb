class Cart < ApplicationRecord
    has_many :cart_items, dependent: :destroy

    def add_sticker(sticker)

        # the sticker id is found and assigned to the current_item, which is incremented by 1
        current_item = cart_items.find_by(sticker_id: sticker.id)
        if current_item
            current_items.increment(:quantity)
        else 
            current_item = cart_items.build(sticker_id: sticker.id)
        end 
        current_item
    end 

    #adding all items in a cart to show final count


    
end
