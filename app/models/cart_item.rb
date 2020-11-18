class CartItem < ApplicationRecord
  belongs_to :sticker
  belongs_to :cart
  has_one :user, through: :cart

  # Calculating the total price which is the stickers set price times by the quantity a buyer is purchasing
  def total_price 
    sticker.price.to_i * quantity.to_i
  end
end
