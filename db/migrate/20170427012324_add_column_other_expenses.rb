class AddColumnOtherExpenses < ActiveRecord::Migration[5.0]
  def change
  	  	  		add_column :other_expenses, :day, :date
  	  	  		
  end
end
