require 'rails_helper'

describe 'create spend process', type: :system do
  include Devise::Test::IntegrationHelpers

  before(:all) do
    delete_all
    @user = User.create(email: 'user1@gmail.com', password: 'password', name: 'User1')

    @cat1 = Category.create(user_id: @user.id, name: 'Drama', icon: 'https://rb.gy/2jgmv')
    @cat2 = Category.create(user_id: @user.id, name: 'Sports', icon: 'https://rb.gy/2jgmv')
    sign_in @user
  end

  it 'Add a new spend with multiple categories' do
    visit category_spends_path(@cat1) # Pass the category_id parameter correctly

    click_on 'New spend'
    fill_in 'Name', with: 'Shoes'
    fill_in 'Amount', with: 100
    check 'Drama' # Use 'check' to select multiple categories
    check 'Sports'

    click_button 'Create Spend'

    # Check if we are on the categories_path after successful spend creation
    expect(page).to have_current_path(category_spends_path(@cat1))

    # Check if the flash message is displayed
    expect(page).to have_text('Spend was successfully created.')
  end

  def delete_all
    Spend.delete_all
    Category.delete_all
    User.delete_all
  end
end
