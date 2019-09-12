class AddItemsToImportPart < ActiveRecord::Migration[6.0]
  def change
    add_column :import_parts, :cost, :decimal
    add_column :import_parts, :country_of_origin, :string
    add_column :import_parts, :quantity, :integer
  end
end
