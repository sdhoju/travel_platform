class AddCToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :place, :string
    add_column :trips, :purpose, :text
  end
end
