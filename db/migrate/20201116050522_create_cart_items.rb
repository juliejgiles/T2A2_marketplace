class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.references :sticker, null: false, foreign_key: true
      t.belongs_to :cart

      t.timestamps
    end
  end
end
