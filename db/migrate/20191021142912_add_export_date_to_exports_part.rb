class AddExportDateToExportsPart < ActiveRecord::Migration[6.0]
  def change
    add_column :exports_parts, :export_date, :date
  end
end
