class User < ApplicationRecord
  include DeviseTokenAuth::Concerns::User

  devise :database_authenticatable, :registerable, :omniauthable, :lockable, :timeoutable,
         :recoverable, :rememberable, :trackable, :validatable, omniauth_providers: %i[facebook google_oauth2]

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

  has_many :loan_requests

  before_create :skip_confirmation!

  def self.from_omniauth(auth)
    # for use with omniauth hash
		where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
			user.first_name = auth.info.first_name
			user.last_name = auth.info.last_name
			user.email = auth.info.email
			user.photo_url = auth.info.image
      user.password = Devise.friendly_token[0,20]
		end
  end
end
