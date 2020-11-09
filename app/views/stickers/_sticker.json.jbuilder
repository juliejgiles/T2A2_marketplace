json.extract! sticker, :id, :name, :description, :type, :price, :created_at, :updated_at
json.url sticker_url(sticker, format: :json)
