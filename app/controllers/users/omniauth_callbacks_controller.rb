class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    omniauth_callback
  end

  def google_oauth2
    omniauth_callback
  end

  private

  def omniauth_callback
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end
