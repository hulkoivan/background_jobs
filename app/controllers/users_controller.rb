class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    CreateUserJob.perform_async
    redirect_to root_path
  end
end
