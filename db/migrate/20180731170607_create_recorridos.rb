class CreateRecorridos < ActiveRecord::Migration[5.2]
  def change
    create_table :recorridos do |t|
      t.integer :id_usuario
      t.integer :id_tarjeta
      t.string :puntoinicial
      t.string :puntofinal
      t.integer :kilometrosrecorridos
      t.string :tarifa
      t.string :idbicicleta
      t.timestamps
    end
  end
end
