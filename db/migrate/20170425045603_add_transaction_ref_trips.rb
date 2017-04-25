class AddTransactionRefTrips < ActiveRecord::Migration[5.0]
  def change
  	add_reference :transactions, :trip, foreign_key: true
  end
end
