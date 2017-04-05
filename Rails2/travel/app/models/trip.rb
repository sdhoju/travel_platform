class Trip < ApplicationRecord
has_many :transactions
has_many :transportations, dependent: :destroy 
end
