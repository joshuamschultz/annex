class CreateImports < ActiveRecord::Migration[6.0]
  def change
    create_table :imports do |t|
      t.string :assigned_number
      t.string :pedimento_number
      t.references :import_type, null: false, foreign_key: true
      t.decimal :total
      t.decimal :iva
      t.text :notes
      t.date :import_date

      t.timestamps
    end
  end
end
