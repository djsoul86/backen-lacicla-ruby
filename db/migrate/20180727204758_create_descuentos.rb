class CreateDescuentos < ActiveRecord::Migration[5.2]
  def change
    create_table :descuentos do |t|
      t.text :codigo
      t.integer :valor
      t.boolean :activo

      t.timestamps
    end
  end
end
