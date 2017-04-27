class Addcolumn < ActiveRecord::Migration[5.0]
  def change
  	  		add_column :registration_fees, :amount, :decimal

  end
end
