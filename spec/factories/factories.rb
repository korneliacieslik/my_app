require 'faker'

FactoryBot.define do 
  factory :user do 
    password {"123456"}
    password_confirmation {"123456"}
    email { Faker::Internet.email }
    name {"Kornelia"} 
  end 
  factory :opinion do
  content {"Test"}
  user
  end 
end 

