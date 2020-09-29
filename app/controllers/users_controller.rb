class UsersController < ApplicationController
  # before_action :set_user, except: [:index, :new]
  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(signup_params)
    return render :new unless @user.save
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
