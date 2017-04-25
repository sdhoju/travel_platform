class AddotherExpensesToTrips < ActiveRecord::Migration[5.0]
  def change
  	add_reference :other_expenses, :trip, foreign_key: true
  end
end
