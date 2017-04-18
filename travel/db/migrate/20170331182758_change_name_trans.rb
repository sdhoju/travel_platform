class ChangeNameTrans < ActiveRecord::Migration[5.0]
  def change
  	drop_table :transports
  end
end
