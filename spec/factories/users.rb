# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "name1"
    provider "twitter"
    uid "123456"
  end
end
