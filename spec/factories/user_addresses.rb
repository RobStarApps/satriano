# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_address do
    user { FactoryGirl.create(:user) }
    street { Faker::AddressDE.street_name }
    postcode { Faker::AddressDE.zip_code }
    city { Faker::AddressDE.city }
    country { Faker::AddressDE.country }

   
  end
end
