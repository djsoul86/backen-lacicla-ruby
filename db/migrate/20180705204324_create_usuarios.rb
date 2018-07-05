class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.text :apellido
      t.text :email
      t.text :password
      t.text :documento
      t.text :celular
      t.text :direccion

      t.timestamps
    end
  end
end
