FactoryBot.define do
  factory :loan_request do
    status 'draft'

    association :applicant, factory: :user
    association :lender, factory: :user
  end
end
