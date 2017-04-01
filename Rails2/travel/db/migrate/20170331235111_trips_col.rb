class TripsCol < ActiveRecord::Migration[5.0]
  def change
  	add_column :trips, :contact_person, :text
  	add_column :trips, :purpose, :text
  	add_column :trips, :place, :text
  	add_column :trips, :start_day, :date
  	add_column :trips, :start_time, :time
  	add_column :trips, :end_day, :date
  	add_column :trips, :end_time, :time
  	add_column :trips, :accomp_person, :text
  	add_column :trips, :currency, :string 
  	add_column :trips, :exchange_rate, :decimal, precision: 8, scale: 2
  	add_column :trips, :comments, :text
  	add_column :trips, :trip_over, :boolean
  	add_column :trips, :trip_estimate, :decimal, precision: 12, scale: 2
  end
end
