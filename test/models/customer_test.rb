require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
	
	def setup
		@customer = Customer.new(name: "Example Customer", email: "customer@example.com",
								 password: "foobar", password_confirmation: "foobar")
	end

	test "password should be present (nonblank)" do
		@customer.password = @customer.password_confirmation = " "*6
		assert_not @customer.valid?
	end

	test "password should have a minimum length" do 
		@customer.password = @customer.password_confirmation = "a"*5
		assert_not @customer.valid?
	end
end
