class DecTrans < ActiveRecord::Migration[5.0]
  def change
  	change_column :transportations, :amount, :decimal, precision: 8, scale: 2
  	change_column :transportations, :airfare, :decimal, precision: 8, scale: 2
  	change_column :transportations, :rental_car, :decimal, precision: 8, scale: 2
  	change_column :transportations, :bus_train, :decimal, precision: 8, scale: 2
  end
end
