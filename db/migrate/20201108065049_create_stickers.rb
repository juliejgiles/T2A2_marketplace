class CreateStickers < ActiveRecord::Migration[6.1]
  def change
    create_table :stickers do |t|
      t.string :title
      t.text :description
      t.string :material
      t.decimal :price, precision: 5, scale: 2, default: 0.00

      t.timestamps
    end
  end
end
