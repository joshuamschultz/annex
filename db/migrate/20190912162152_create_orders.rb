class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :part, null: false, foreign_key: true
      t.integer :quantity
      t.references :supplier, null: false, foreign_key: true
      t.integer :po_number

      t.timestamps
    end
  end
end
