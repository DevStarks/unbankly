FactoryBot.define do
  factory :loan_application do
    status 'draft'

    association :applicant, factory: :user
    association :loaner, factory: :user
  end
end
