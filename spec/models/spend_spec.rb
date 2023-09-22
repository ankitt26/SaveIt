require 'rails_helper'

RSpec.describe Spend, type: :model do
  before(:each) do
    @user = User.new(name: 'Ankit', email: 'abc@gmail.com', password: 'asd4f3g')
    @spend = Spend.create(user: @user, name: 'cycle', amount: 300)
  end

  context 'presence validations' do
    it 'is not valid without a user' do
      @spend.user_id = nil
      expect(@spend).to_not be_valid
    end

    it 'is not valid without a name' do
      @spend.name = nil
      expect(@spend).to_not be_valid
    end

    it 'is not valid without an amount' do
      @spend.amount = nil
      expect(@spend).not_to be_valid
    end
  end
end
