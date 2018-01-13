FactoryBot.define do
  factory :loan do
    amount { rand(100000) }
    payment_freq { rand(90) }
    term_length { rand(90) }

    association :borrower, factory: :user
    association :lender, factory: :user

    loan_request { create(:loan_request, lender: self.lender, applicant: self.borrower) }
  end
end
