class CreateDailyExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_expenses do |t|

      t.timestamps
    end
  end
end
