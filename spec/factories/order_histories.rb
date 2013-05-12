# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_history do
    where_is "MyString"
    time_point "2013-05-12 12:18:32"
  end
end
