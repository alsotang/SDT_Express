# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    start_loc "MyString"
    end_loc "MyString"
    price 1
    is_done false
  end
end
