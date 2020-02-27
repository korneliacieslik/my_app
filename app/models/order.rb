class Order < ApplicationRecord
  # Active Record Associations
  # belongs_to indicates one-to-one connection, each instance of Order belongs to
  # one instance of Customer
  belongs_to :user 
  # has_many indicates one-to-many connection, each instamce of Order has many instance 
  # of Product
  has_many :products

end
