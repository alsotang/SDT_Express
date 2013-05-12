# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "MyString"
    password "MyString"
    true_name "MyString"
    telephone "MyString"
  end
end
