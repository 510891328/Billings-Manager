class UsersController < ApplicationController
  before_action :required_login, except: [:new, :create]
  def show

  end

  def new

  end

  def create
    @user = User.create(user_params)
    return render :new unless @user.save
    sessions[:user_email] = user.email
    redirect_to user_path(@user)
  end

  def update
    @user = current_user
    @user.update(user_params)
    return render :edit unless @user.save
  end

  def edit

  end

  private
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation, :email)
    end
end
