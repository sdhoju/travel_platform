class RegistrationFee < ApplicationRecord
belongs_to :trip
validates :name, presence: true
has_many :receipts, as: :imageable
end
