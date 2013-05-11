# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :driver do
    name "MyString"
    vehicle_type 1
    current_loc "MyString"
    vehicle_status false
  end
end
