class CreateExportTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :export_types do |t|
      t.string :type_code
      t.string :name

      t.timestamps
    end
  end
end
