class Loan < ApplicationRecord
  validates_presence_of :lender, :borrower, :loan_application, :amount, :payment_freq, :term_length

  belongs_to :lender, class_name: 'User'

  belongs_to :borrower, class_name: 'User'

  belongs_to :loan_application

  has_many :payments
end
