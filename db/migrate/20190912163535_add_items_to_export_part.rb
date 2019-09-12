class AddItemsToExportPart < ActiveRecord::Migration[6.0]
  def change
    add_column :export_parts, :quantity, :integer
    add_column :export_parts, :import_part, :reference
  end
end
