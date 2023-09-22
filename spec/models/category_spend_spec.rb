require 'rails_helper'

RSpec.describe CategorySpend, type: :model do
  before(:each) do
    @user = User.create(name: 'Ankit', email: 'abc@gmail.com', password: 'asd4f3g')
    @category = Category.create(user: @user, name: 'Shopping', icon: 'https://rb.gy/2jgmv')
    @spend = Spend.create(user: @user, name: 'cycle', amount: 300)
    @category_spend = CategorySpend.create(category: @category, spend: @spend)
  end

  context 'presence validations' do
    it 'is not valid without a category' do
      @category_spend.category_id = nil
      expect(@category_spend).to_not be_valid
    end

    it 'is not valid without a spend' do
      @category_spend.spend_id = nil
      expect(@category_spend).to_not be_valid
    end
  end
end
