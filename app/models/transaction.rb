class Transaction < ApplicationRecord


belongs_to :trip
validates :item, presence: true
validates :amount, numericality: true
end
