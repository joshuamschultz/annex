class CreateExports < ActiveRecord::Migration[6.0]
  def change
    create_table :exports do |t|
      t.string :assigned_number
      t.string :pedimento_number
      t.references :export_type, null: false, foreign_key: true
      t.decimal :total
      t.decimal :iva
      t.text :notes
      t.date :export_date

      t.timestamps
    end
  end
end
