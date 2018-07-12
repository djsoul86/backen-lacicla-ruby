class MyNewMigration < ActiveRecord::Migration[5.2]
  def change
    drop_table :usuarios
  end
end
