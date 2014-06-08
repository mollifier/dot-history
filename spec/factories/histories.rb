# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :history do
    raw_line "MyText"
    command_name "MyString"
    command_argument "MyText"
    comment "MyText"
    device nil
  end
end
