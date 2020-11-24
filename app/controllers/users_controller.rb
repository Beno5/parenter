class UsersController < ApplicationController
  def index
    @users = User.where(is_nanny: true)
  end

  def show
  end
end
