class ColumnsTrans < ActiveRecord::Migration[5.0]
  def change
	add_column :transactions, :trans_item, :string
	add_column :transactions, :trans_num, :decimal
  end
end
