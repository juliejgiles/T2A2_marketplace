class CartItem < ApplicationRecord
  belongs_to :sticker
  belongs_to :cart
end
