require 'rails_helper'

RSpec.describe 'Create an event', type: :feature do
  scenario 'new event' do
    user = User.create(first_name: 'John', last_name: 'Doe', email: 'johndoe@ymail.com', password: 'password')
    visit login_path
    fill_in 'User ID', with: '1'
    click_on 'Log in'
    visit events_index_path(user)
    click_on 'Create Event'
    fill_in 'Title', with: 'Test Event'
    fill_in 'Date', with: '2020-06-06'
    fill_in 'Description', with: 'This is the test event description'
    fill_in 'Venue', with: 'Online'
    click_on 'Create'
    expect(page).to have_content('Test Event')
  end
end
