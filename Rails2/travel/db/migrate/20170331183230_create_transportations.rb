class CreateTransportations < ActiveRecord::Migration[5.0]
  def change
    create_table :transportations do |t|

      t.timestamps
    end
  end
end
