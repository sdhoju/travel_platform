class DrColTr < ActiveRecord::Migration[5.0]
  def change
  	remove_column :registration_fees, :day, :date
  	remove_column :registration_fees, :description, :text
  end
end
