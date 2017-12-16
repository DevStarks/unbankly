class LoanApplication < ApplicationRecord
  validates_presence_of :applicant, :loaner, :status
  validates_inclusion_of :status, in: %w(draft pending approved denied)
  belongs_to :loaner, class_name: 'User'
  belongs_to :applicant, class_name: 'User'
end
