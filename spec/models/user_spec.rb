require 'spec_helper'

describe User, :type => :model do
  describe 'validation' do
    it 'has a valid factory' do
      expect(FactoryGirl.build(:user)).to be_valid
    end
  end
end
