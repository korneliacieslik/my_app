
require 'rails_helper'

RSpec.describe 'You about us', type: :feature do
  scenario 'index page' do
    visit opinions_path 
    expect(page).to have_content('You about us')
  end
end

RSpec.describe 'Create opinion', type: :feature do
  scenario 'login user' do
    user = User.create!(:email => 'sample@email.com', :password => 'f4k3p455w0rd')
    user.confirmed_at = Time.now
    user.save
    login_as(user, :scope => :user)
   end 
  scenario 'redirect user to opinion form' do
    visit opinions_path 
    click_button 'Add your opinion'
    fill_in 'Content', with: 'Nice app! :D'
    click_button 'Create Opinion'
  end
   Warden.test_reset! 
end 



