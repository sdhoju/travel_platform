class Addcolumntotransportation < ActiveRecord::Migration[5.0]
  def change
   	add_column :transportations, :date, :date

  end
end
