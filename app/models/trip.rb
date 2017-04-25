class Trip < ApplicationRecord
belongs_to :user
#has_many :transactions
has_many :other_expenses, dependent: :destroy 
has_many :registration_fees, dependent: :destroy 
has_many :transportations, dependent: :destroy 
end
