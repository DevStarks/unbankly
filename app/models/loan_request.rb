class LoanRequest < ApplicationRecord
  validates_presence_of :applicant, :lender, :status
  validates_inclusion_of :status, in: %w(draft pending approved denied)
  belongs_to :lender, class_name: 'User'
  belongs_to :applicant, class_name: 'User'
end
