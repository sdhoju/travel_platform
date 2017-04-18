class Trip < ApplicationRecord
belongs_to :user
has_many :transactions
has_many :transportations, dependent: :destroy 
end
