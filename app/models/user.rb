class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :loans_as_lender,
           foreign_key: :lender_id,
           class_name: 'Loan'

  has_many :loans_as_borrower,
           foreign_key: :borrower_id,
           class_name: 'Loan'

  has_many :debtors,
           through: :loans_as_lender,
           source: :borrower

  has_many :creditors,
           through: :loans_as_borrower,
           source: :lender

  has_many :loan_applications
end
