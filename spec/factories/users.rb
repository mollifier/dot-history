# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "name123_#{n}"}
    provider "twitter"
    sequence(:uid ) { |n| "123456_#{n}"}
  end
end
