class RemovePasswordFromUsuario < ActiveRecord::Migration[5.2]
  def change
    remove_column :usuarios, :password, :text
  end
end
