# require 'rails_helper'

# describe 'the signin process', type: :feature do
#   before :each do
#     User.create(email: 'user1@gmail.com', password: 'password', name: 'User1')
#   end

#   it 'signs user in' do
#     visit '/users/sign_in'
#     fill_in 'Email', with: 'user1@gmail.com'
#     fill_in 'Password', with: 'password'
#     click_button 'Log in'

#     # Check if we are on the categories_path after successful login
#     expect(page).to have_current_path(categories_path)

#     # Check if the flash message is displayed
#     expect(page).to have_text('Signed in successfully.')
#   end
# end
