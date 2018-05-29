class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    if [:user][:password] == [:user][:password_confirmation]

    byebug
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
