class CreateRecorridos < ActiveRecord::Migration[5.2]
  def change
    create_table :recorridos do |t|
      t.text :cedula
      t.text :idtarjeta
      t.text :origen
      t.text :destino
      t.text :kilometros
      t.text :tarifa
      t.text :idbicicleta

      t.timestamps
    end
  end
end
