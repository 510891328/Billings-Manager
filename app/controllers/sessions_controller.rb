class SessionsController < ApplicationController
  before_action :skip_login, only: [:new]

  def new

  end

  def create
    user = User.find_by(email: params[:user][:email])
    authenticate = user.try(:authenticate, params[:user][:password])
    return redirect_to controller: 'sessions', action: 'new' unless authenticate
    session[:user_email] = user.email
    @user = user
    redirect_to user_path(@user)
  end

  def destroy
    session.delete :user_email

    redirect_to '/'
  end
end
