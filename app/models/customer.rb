class Customer < ApplicationRecord
  # Active Record Associations
  # has_many through indicates many-to-many connection
  has_many :products, through: :order
	# has_many indicates a one-to-many connection
	has_many :orders
	
	validates :name, presence: true, length: {minimum: 2}
	validates :email, presence: true 

	#If both below are commented new customer can be signed up, else it doesn't work. ??	
	#has_secure_password 
	#validates :password , presence: true, length: {minimum: 6}  
end
