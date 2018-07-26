class CreateTarjeta < ActiveRecord::Migration[5.2]
  def change
    create_table :tarjeta do |t|
      t.string :numero
      t.string :fecha
      t.string :codigo

      t.timestamps
    end
  end
end
