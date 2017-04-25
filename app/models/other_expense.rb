class OtherExpense < ApplicationRecord
belongs_to :trip
has_many :receipts, as: :imageable

end
