class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  protect_from_forgery with: :exception

  skip_before_action :verify_authenticity_token, if: :json_request?

  layout :layout_by_resource


  private

  def json_request?
    request.format.json?
  end

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
