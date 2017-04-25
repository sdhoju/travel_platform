class Transaction < ApplicationRecord

belongs_to :dcategory
belongs_to :trip
has_many :ditems
validates :item, presence: true
validates :amount, numericality: true
end
