class Customer < ApplicationRecord
	has_many :products, through: :order
	has_many :orders
	validates :name, presence: true,
					 length: {minimum: 2}
	validates :email, presence: true 
end
