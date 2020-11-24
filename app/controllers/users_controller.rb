class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @users = User.where(is_nanny: true)
  end

  def show
  end
end
