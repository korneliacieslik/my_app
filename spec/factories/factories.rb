require 'faker'

FactoryBot.define do 
  factory :user do 
    password {"123456"}
    password_confirmation {"123456"}
    email { Faker::Internet.email } 
  end 
  factory :opinion do
    content {"Test"}
  end
end 

