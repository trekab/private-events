require 'rails_helper'
 
RSpec.describe 'Signing in a user', type: :feature do
  scenario 'valid user' do
    user = User.create(first_name: 'John', last_name: 'Doe', email: 'johndoe@ymail.com', password: 'password')
    visit login_path
    fill_in 'User ID', with: '1'
    click_on 'Log in'
    visit events_index_path(user)
    expect(page).to have_content('John')
  end

  scenario 'invalid user' do
    visit login_path
    fill_in 'User ID', with: 'Invalid Username'
    click_on 'Log in'
    visit login_path
    expect(page).to have_content('Log In')
  end
end