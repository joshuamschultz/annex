class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.string :part_number
      t.text :description
      t.string :hts
      t.integer :lead_time
      t.text :notes

      t.timestamps
    end
  end
end
