class AddItemsToImportPart < ActiveRecord::Migration[6.0]
  def change
    add_column :imports_parts, :cost, :decimal
    add_column :imports_parts, :country_of_origin, :string
    add_column :imports_parts, :quantity, :integer
  end
end
