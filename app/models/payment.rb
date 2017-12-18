class Payment < ApplicationRecord
  validates_presence_of :amount, :status, :loan

  validates_inclusion_of :status, in: %w(paid unpaid)

  belongs_to :loan
end
