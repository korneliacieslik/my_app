
#require 'rails_helper.rb'
require 'rails_helper'
RSpec.describe 'You about us', type: :feature do
  scenario 'index page' do
    visit opinions_path 
    expect(page).to have_content('You about us')
  end
end