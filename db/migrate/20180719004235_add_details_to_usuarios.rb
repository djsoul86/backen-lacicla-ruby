class AddDetailsToUsuarios < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :apellido, :text
    add_column :usuarios, :documento, :text
    add_column :usuarios, :celular, :text
    add_column :usuarios, :direccion, :text
  end
end
