class AddImageToStickers < ActiveRecord::Migration[6.1]
  def change
    add_column :stickers, :image, :json
  end
end
