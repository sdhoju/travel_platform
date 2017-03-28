class Transaction < ApplicationRecord
has_many :ditems
validates :item, presence: true
validates :amount, numericality: true
end
