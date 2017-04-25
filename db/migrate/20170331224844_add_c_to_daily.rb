class AddCToDaily < ActiveRecord::Migration[5.0]
  def change
  	add_column :daily_expenses, :type, :string
  	add_column :daily_expenses, :day, :date
  	add_column :daily_expenses, :amount, :decimal
  end
end
