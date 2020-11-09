class AddUserRefToStickers < ActiveRecord::Migration[6.1]
  def change
    add_reference :stickers, :user, null: false, foreign_key: true
  end
end
