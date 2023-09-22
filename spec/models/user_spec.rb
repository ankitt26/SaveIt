require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Ankit', email: 'abc@gmail.com', password: 'asd4f3g')
  end

  context 'presence validations' do
    it 'is valid without a name' do
      @user.name = nil
      expect(@user).to be_valid
    end

    it 'is not valid without an email' do
      @user.email = nil
      expect(@user).not_to be_valid
    end

    it 'is not valid without a password' do
      @user.password = nil
      expect(@user).not_to be_valid
    end
  end
end
