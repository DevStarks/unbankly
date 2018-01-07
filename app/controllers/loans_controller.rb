class LoansController < ApplicationController
  def index
    case params[:role]
    when 'lender'
      render json: current_user.loans_as_lender
    when 'borrower'
      render json: current_user.loans_as_borrower
    else
      render json: { :errors => 'Unrecognizable role' }, :status => 422
    end
  end
end
