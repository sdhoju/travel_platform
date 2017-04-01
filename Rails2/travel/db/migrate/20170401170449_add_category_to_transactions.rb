class AddCategoryToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :dcategory_id, :integer
  end
end
