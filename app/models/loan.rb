class Loan < ApplicationRecord
  validates_presence_of :loaner, :loanee, :loan_application, :amount, :payment_freq, :term_length

  belongs_to :loaner, class_name: 'User'

  belongs_to :loanee, class_name: 'User'

  belongs_to :loan_application

  has_many :payments
end
