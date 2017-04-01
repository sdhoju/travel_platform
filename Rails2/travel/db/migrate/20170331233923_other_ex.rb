class OtherEx < ActiveRecord::Migration[5.0]
  def change
  	add_column :other_expenses, :day, :date
  	add_column :other_expenses, :description, :text
  	add_column :other_expenses, :amount, :decimal, precision: 8, scale: 2
  end
end
