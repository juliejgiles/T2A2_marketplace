class AddFinishToStickers < ActiveRecord::Migration[6.1]
  def change
    add_column :stickers, :finish, :string
  end
end
