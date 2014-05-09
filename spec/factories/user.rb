FactoryGirl.define do
  factory :user do
    user_name   { Faker::Internet.user_name }
    email       { Faker::Internet.email }
    password    { "password" }

    

    factory :user_with_address do
      after(:create) do |user, eval|
        user.user_addresses = FactoryGirl.create(:user_address)
        user.save
      end

     
    end
  end


end