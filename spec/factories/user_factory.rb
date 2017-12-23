FactoryBot.define do
  factory :user, aliases: [:borrower, :lender, :applicant] do
    first_name Faker::Name.first_name
    last_name  Faker::Name.last_name
    sequence(:email) { |n| "#{n}#{Faker::Internet.email}" }

    phone Faker::PhoneNumber.phone_number
    password Faker::Internet.password
  end
end
