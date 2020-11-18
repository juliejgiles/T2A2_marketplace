class DropMessages < ActiveRecord::Migration[6.1]
  def change
    drop_table :messages
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
