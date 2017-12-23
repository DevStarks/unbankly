FactoryBot.define do
  factory :loan_application do
    status 'draft'

    association :applicant, factory: :user
    association :lender, factory: :user
  end
end
