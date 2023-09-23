require 'rails_helper'

describe 'create category process', type: :system do
  include Devise::Test::IntegrationHelpers

  before(:each) do
    User.create(email: 'user1@gmail.com', password: 'password', name: 'User1')
    @user = User.first
    sign_in @user
  end

  it 'Add a new category' do
    visit '/categories'
    click_on 'New category'
    fill_in 'Name', with: 'Shopping'
    fill_in 'Icon', with: 'https://rb.gy/2jgmv'
    click_button 'Create Category'

    # Check if we are on the categories_path after successful login
    expect(page).to have_current_path(categories_path)

    # Check if the flash message is displayed
    expect(page).to have_text('Category was successfully created.')
  end
end
