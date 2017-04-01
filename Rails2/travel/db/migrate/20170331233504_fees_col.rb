class FeesCol < ActiveRecord::Migration[5.0]
  def change
  	add_column :registration_fees, :type, :string
  	add_column :registration_fees, :amount, :decimal, precision: 8, scale: 2
  end
end
