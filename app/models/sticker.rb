class Sticker < ApplicationRecord
    belongs_to :user, optional: true
    has_many :cart_items
    mount_uploader :image, ImageUploader


####SERVER_SIDE VALIDATIONS FOR USER INPUTS ENTERED INTO FORMS #####
#this requires all those fields must have content before user submits form
validates :title, :description, :finish, :material, :price, presence: true
#this sets the maximum lengths and sends a message to the user if they exceed that length
validates :description, length: { maximum: 1000, too_long: "Description must be less than %{count} characters."}
validates :title, length: {maximum: 200, too_long: "Title must be less than %{count} characters." }
#this ensures that the price must be greater than 0 and in the regex format provided, that's no more than 6 characters in total
validates :price, :numericality => {:greater_than => 0}, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, length: {maximum: 6}

#Available selection options for the material and finish attributes of stickers
MATERIAL = %w{ Vinyl Paper Polyester }
FINISH = %w{ Matte Glossy Transparent }

end