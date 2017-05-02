class AddColumnToTripsss < ActiveRecord::Migration[5.0]
  def change
  	 add_column :trips, :contact, :string
  	 add_column :trips, :dept, :string
  	 add_column :trips, :accomp, :string
	add_column :trips, :phone, :string
	add_column :trips, :tripno, :integer
	add_column :trips, :begindate, :date
  	 add_column :trips, :begintime, :time
  	 add_column :trips, :enddate, :date
  	 add_column :trips, :endtime, :time


  	 
    end
end
