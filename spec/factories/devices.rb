# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :device do
    sequence(:token) { |n| "token123_#{n}"}
    name "MyString"
    user nil
  end
end
