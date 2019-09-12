class CreateJoinExportPart < ActiveRecord::Migration[6.0]
  def change
    create_table :join_export_parts do |t|
      t.string :export
      t.string :part
    end
  end
end
