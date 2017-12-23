class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :loans_as_lender,
           foreign_key: :lender_id,
           class_name: 'Loan'

  has_many :loan_applications

  def debtors
    User.where(id: loans_as_lender.pluck(:borrower_id))
  end
end
