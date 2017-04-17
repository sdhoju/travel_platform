class Transportation < ApplicationRecord
belongs_to :trip
has_many :pictures, as: :imageable
end
