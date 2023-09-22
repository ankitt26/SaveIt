require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:each) do 
    @user = User.new(name: "Ankit", email: "abc@gmail.com", password: "asd4f3g")
   @category = Category.create(user: @user, name: "Shopping", icon: "https://rb.gy/2jgmv")
  end

  context "presence validations" do

    it 'is not valid without a user' do
      @category.user_id = nil
      expect(@category).to_not be_valid
    end

    it 'is not valid without a name' do
      @category.name = nil
      expect(@category).to_not be_valid
    end

    it 'is valid without an icon' do
      @category.icon = nil
      expect(@category).to be_valid
    end
  end
end
