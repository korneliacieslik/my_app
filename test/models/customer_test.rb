require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
	
	def setup
		@customer = Customer.new(name: "Example Customer", email: "customer@example.com",
								 password: "foobar", password_confirmation: "foobar")
	end
end
