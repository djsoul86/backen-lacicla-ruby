class AddIsUduarioToUsuarios < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :idusuario, :text
  end
end
