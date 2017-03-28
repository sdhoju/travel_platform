class AddAttrsToItems < ActiveRecord::Migration[5.0]
  def change
         add_column :ditems, :dname, :string
          add_column :ditems, :damount, :decimal
  end
end
