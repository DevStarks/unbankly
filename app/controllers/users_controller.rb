class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    case params[:role]
    when 'lender'
      render json: current_user.creditors
    when 'borrower'
      render json: current_user.debtors
    else
      render json: { :errors => 'Unrecognizable role' }, :status => 422
    end
  end
end
