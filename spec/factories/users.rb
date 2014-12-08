FactoryGirl.define do

  sequence :name do |n|
    "user_#{n}"
  end
  sequence :email do |n|
    "test_#{n}@mail.com"
  end


  factory :user do
    name
    email
  end


end
