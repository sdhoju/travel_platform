class Transaction < ApplicationRecord

belongs_to :dcategory
has_many :ditems
validates :item, presence: true
validates :amount, numericality: true
end
