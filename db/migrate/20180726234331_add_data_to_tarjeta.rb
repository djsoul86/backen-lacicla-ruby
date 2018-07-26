class AddDataToTarjeta < ActiveRecord::Migration[5.2]
  def change
    add_column :tarjeta, :id_usuario, :int
  end
end
