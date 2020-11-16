json.extract! cart_item, :id, :sticker_id, :cart, :created_at, :updated_at
json.url cart_item_url(cart_item, format: :json)
