FactoryBot.define do
  factory :loan do
    amount { rand(100000) }
    payment_freq { rand(90) }
    term_length { rand(90) }

    association :loanee, factory: :user
    association :loaner, factory: :user

    loan_application { create(:loan_application, loaner: self.loaner, applicant: self.loanee) }
  end
end
