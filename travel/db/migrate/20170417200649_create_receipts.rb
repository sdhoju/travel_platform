class CreateReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :receipts do |t|
      t.string :name
      t.string :attachment
      t.references :imageable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
