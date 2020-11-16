class Cart < ApplicationRecord
    has_many :cart_items, dependent: :destroy

    def add_sticker(sticker)

        # the sticker id is found and assigned to the current_item, which is incremented by 1
        current_item = cart_items.find_by(sticker_id: sticker.id)
        if current_item
            current_item.increment(:quantity)
        else 
            current_item = cart_items.build(sticker_id: sticker.id)
        end 
        current_item
    end 

    #adding all items in a cart to an array and iterates through that array to accumulate each price to reach the total price of everything in the cart 
    def total_price
        cart_items.to_a.sum { |item| item.total_price }
    end

    
end
