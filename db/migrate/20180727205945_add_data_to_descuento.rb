class AddDataToDescuento < ActiveRecord::Migration[5.2]
  def change
    add_column :descuentos, :id_usuario, :integer
  end
end
