class UsersController < ApplicationController

  def show

  end

  def new
  end

  def create
    @user = User.create(signup_params)
    return redirect_to controller: 'users', action: 'new' unless @user.save
    # sessions[:user] = user
  end

  def update

  end

  def edit

  end

  def destroy

  end
  private
    def signup_params
      params.require(:user).permit(:name, :password, :password_confirmation, :email)
    end
end
