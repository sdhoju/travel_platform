class Transaction < ApplicationRecord


belongs_to :trip
validates :item, presence: true
validates :amount, numericality: true
has_many :receipts, as: :imageable

end
