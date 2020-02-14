class Customer < ApplicationRecord
	has_many :products, through: :order
	has_many :orders
	validates :name, presence: true,
					 length: {minimum: 2}
	validates :email, presence: true 

	#Rails method
	#If both below are commented new customer can be signed up, else it doesn't work. ??
	
	#has_secure_password 
	#validates :password , presence: true, length: {minimum: 6}  


end
