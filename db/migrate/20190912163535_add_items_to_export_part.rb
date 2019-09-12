class AddItemsToExportPart < ActiveRecord::Migration[6.0]
  def change
    add_column :exports_parts, :quantity, :integer
    add_column :exports_parts, :import_part, :reference
  end
end
