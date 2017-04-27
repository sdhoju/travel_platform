class AddColumnOtherExpensesss < ActiveRecord::Migration[5.0]
  def change
  	  	  	  		add_column :other_expenses, :description, :string
  	  	  	  			add_column :other_expenses, :amount, :decimal, precision: 8, scale: 2 

  end
end
