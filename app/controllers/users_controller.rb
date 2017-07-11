class UsersController < ApplicationController
  before_action :authenticate_user!

  layout "login"

end
