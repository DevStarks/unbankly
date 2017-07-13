class UsersController < ApplicationController
  before_action :authenticate_user!

  layout 'devise'

end
