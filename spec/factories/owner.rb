FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.org"
  end
end

FactoryGirl.define do
  factory :owner, class: 'Owner' do
    name 'Test McTester'
    email
    password '12345678'
    password_confirmation '12345678'
  end
end
