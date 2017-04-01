class ChangeDec < ActiveRecord::Migration[5.0]
  def change
  	change_column :daily_expenses, :amount, :decimal, precision: 8, scale: 2
  end
end
