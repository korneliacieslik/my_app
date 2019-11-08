class Customer < ApplicationRecord
	# validate :name, :presence => true 
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true, 
			  # :format {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
			  format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
end
