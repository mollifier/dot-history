require 'rails_helper'

RSpec.describe History, :type => :model do
  it 'has a valid factories' do
    expect(build(:history)).to be_valid
  end

  # raw_line
  it 'is valid if raw_line length is 1' do
    history = build(:history, raw_line: 'a')
    expect(history).to be_valid
  end

  it 'is valid if raw_line length is 10000' do
    history = build(:history, raw_line: 'a' * 10000)
    expect(history).to be_valid
  end

  it 'is invalid if raw_line is nil' do
    history = build(:history, raw_line: nil)
    expect(history.errors_on(:raw_line).size).to be > 0
  end

  it 'is invalid if raw_line is empty' do
    history = build(:history, raw_line: '')
    expect(history.errors_on(:raw_line).size).to be > 0
  end

  it 'is invalid if raw_line length is 100001' do
    history = build(:history, raw_line: 'a' * 100001)
    expect(history.errors_on(:raw_line).size).to be > 0
  end

  # command_name
  it 'is valid if command_name length is 1' do
    history = build(:history, command_name: 'a')
    expect(history).to be_valid
  end

  it 'is valid if command_name length is 255' do
    history = build(:history, command_name: 'a' * 255)
    expect(history).to be_valid
  end

  it 'is valid if command_name is nil' do
    history = build(:history, command_name: nil)
    expect(history).to be_valid
  end

  it 'is valid if command_name is empty' do
    history = build(:history, command_name: '')
    expect(history).to be_valid
  end

  it 'is invalid if command_name length is 256' do
    history = build(:history, command_name: 'a' * 256)
    expect(history.errors_on(:command_name).size).to be > 0
  end

  # command_argument
  it 'is valid if command_argument length is 1' do
    history = build(:history, command_argument: 'a')
    expect(history).to be_valid
  end

  it 'is valid if command_argument length is 10000' do
    history = build(:history, command_argument: 'a' * 10000)
    expect(history).to be_valid
  end

  it 'is valid if command_argument is nil' do
    history = build(:history, command_argument: nil)
    expect(history).to be_valid
  end

  it 'is valid if command_argument is empty' do
    history = build(:history, command_argument: '')
    expect(history).to be_valid
  end

  it 'is invalid if command_argument length is 100001' do
    history = build(:history, command_argument: 'a' * 100001)
    expect(history.errors_on(:command_argument).size).to be > 0
  end

  # comment
  it 'is valid if comment length is 1' do
    history = build(:history, comment: 'a')
    expect(history).to be_valid
  end

  it 'is valid if comment length is 10000' do
    history = build(:history, comment: 'a' * 10000)
    expect(history).to be_valid
  end

  it 'is valid if comment is nil' do
    history = build(:history, comment: nil)
    expect(history).to be_valid
  end

  it 'is valid if comment is empty' do
    history = build(:history, comment: '')
    expect(history).to be_valid
  end

  it 'is invalid if comment length is 100001' do
    history = build(:history, comment: 'a' * 100001)
    expect(history.errors_on(:comment).size).to be > 0
  end
end
