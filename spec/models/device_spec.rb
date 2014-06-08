require 'rails_helper'

describe Device, :type => :model do
  it 'has a valid factories' do
    expect(build(:device)).to be_valid
  end

  it 'is valid if token length is 1' do
    device = build(:device, token: 'a')
    expect(device).to be_valid
  end

  it 'is valid if token length is 255' do
    device = build(:device, token: 'a' * 255)
    expect(device).to be_valid
  end

  it 'is invalid if token is nil' do
    device = build(:device, token: nil)
    expect(device.errors_on(:token).size).to be > 0
  end

  it 'is invalid if token is empty' do
    device = build(:device, token: '')
    expect(device.errors_on(:token).size).to be > 0
  end

  it 'is invalid if token length is 256' do
    device = build(:device, token: 'a' * 256)
    expect(device.errors_on(:token).size).to be > 0
  end

  it 'is invalid with a duplicate token' do
    create(:device, token: 'token1')
    duplicate_device = build(:device, token: 'token1')
    expect(duplicate_device.errors_on(:token).size).to be > 0
  end

  it 'is valid if name length is 255' do
    device = build(:device, name: 'a' * 255)
    expect(device).to be_valid
  end

  it 'is invalid if name length is 256' do
    device = build(:device, name: 'a' * 256)
    expect(device.errors_on(:name).size).to be > 0
  end

end

