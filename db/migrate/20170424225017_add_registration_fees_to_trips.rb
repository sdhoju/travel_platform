class AddRegistrationFeesToTrips < ActiveRecord::Migration[5.0]
  def change
    	add_reference :registration_fees, :trip, foreign_key: true
  end
end
