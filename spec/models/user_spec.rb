require 'spec_helper'

describe User, :type => :model do
  describe 'validation' do
    it 'has a valid factory' do
      expect(FactoryGirl.build(:user)).to be_valid
    end

    it 'is invalid with a duplicate name' do
      FactoryGirl.create(:user, name: 'name1')
      duplicate_user = FactoryGirl.build(:user, name: 'name1')
      expect(duplicate_user.errors_on(:name).size).to eq(1)
    end
  end
end
