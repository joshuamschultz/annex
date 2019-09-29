class AddIdToImportTypes < ActiveRecord::Migration[6.0]
  def change
    add_column :imports_parts, :id, :primary_key
    add_column :exports_parts, :id, :primary_key 
  end
end
