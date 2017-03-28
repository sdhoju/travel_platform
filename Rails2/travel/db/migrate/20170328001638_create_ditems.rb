class CreateDitems < ActiveRecord::Migration[5.0]
  def change
    create_table :ditems do |t|
      t.string :dname
      t.decimal :damount
      t.references :transaction, foreign_key: true

      t.timestamps
    end
  end
end
