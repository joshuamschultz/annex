class AddExchangeRateToImport < ActiveRecord::Migration[6.0]
  def change
    add_column :imports, :exchange_rate, :decimal
  end
end
