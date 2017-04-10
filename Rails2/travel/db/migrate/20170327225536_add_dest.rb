class AddDest < ActiveRecord::Migration[5.0]
  def change
  add_column :transactions, :dest, :string
  end
end
