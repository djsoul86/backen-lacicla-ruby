class RemoveNombreFromUsuario < ActiveRecord::Migration[5.2]
  def change
    remove_column :usuarios, :nombre, :string
  end
end
