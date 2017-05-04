class Trip < ApplicationRecord
validates :tripno, :place, :begindate, :begintime, :enddate, :endtime,
			:accomp, :dept, :contact, :phone,  presence: true

belongs_to :user
has_many :transactions, dependent: :destroy 
has_many :other_expenses, dependent: :destroy 
has_many :registration_fees, dependent: :destroy 
has_many :transportations, dependent: :destroy 
end


