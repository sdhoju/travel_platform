class TransCol < ActiveRecord::Migration[5.0]
  def change
  	add_column :transportations, :day, :date
  	add_column :transportations, :from, :string
  	add_column :transportations, :to, :string
  	add_column :transportations, :mileage, :integer
  	add_column :transportations, :amount, :decimal 
  	add_column :transportations, :airfare, :decimal 
  	add_column :transportations, :rental_car, :decimal 
  	add_column :transportations, :bus_train, :decimal 
  end
end
