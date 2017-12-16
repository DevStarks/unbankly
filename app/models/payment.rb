class Payment < ApplicationRecord
  validates_presence_of :amount, :status, :loan

  belongs_to :loan
end
