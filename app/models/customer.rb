class Customer < ApplicationRecord
	has_many :products, through: :order
	has_many :orders
	validates :name, presence: true,
					 length: {minimum: 2}
	validates :email, presence: true 

	#Rails method
	has_secure_password 
	validates :password, presence: true, length: {minimum: 6}
end
