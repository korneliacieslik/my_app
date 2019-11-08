require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
	
	def setup 
		@customer = Customer.new(name: "Exmaple Customer", email: "customer@example.com")
								# (:name => "Exmaple Customer", :email=> "customer@example.com")
	end 

	test "should be valid" do 
		@customer.valid? 
	end 

	test "name should be present" do 
		 @customer.name = " " 
		#           if @customer is valid (true)       if @customer is invalid (false) 
		#           then assert_not gives false        then assert_not is true 
		assert_not @customer.valid?
	end 

	test "email should be present" do
		@customer.email = " "
		assert_not @customer.valid?
	end 

	test "email should be uniqueness" do
		duplicate_customer = @customer.dup
		@customer.save
		assert_not duplicate_customer.valid?
	end

	test "email validation should accept email addresses" do 
		valid_emailes = %w[MY-EAMIL@EXAMPLE.com myemail@example.com my_email@example.COM
							Myeamil@example.com my.email@example.com.fo ]

		valid_emailes.each do |valid_email|
			@customer.email = valid_email
			assert @customer.valid?
		end
	end 	
end
