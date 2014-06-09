# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    email "MyString"
    name "MyString"
    company "MyString"
    phone "MyString"
    note "MyText"
  end
end
