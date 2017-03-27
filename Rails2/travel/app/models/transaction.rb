class Transaction < ApplicationRecord

validates :item, presence: true
validates :amount, numericality: true
end
