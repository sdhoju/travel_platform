class AlterRegistrationFees < ActiveRecord::Migration[5.0]
  def change
  	rename_column :registration_fees, :type, :name
  end
end
