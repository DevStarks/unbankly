class LoanApplication < ApplicationRecord
  belongs_to :loaner, class_name: 'User'
  belongs_to :applicant, class_name: 'User'
end
