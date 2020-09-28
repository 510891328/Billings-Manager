class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find(email: params[:user][:email])
    authenticate = user.try(:authenticate, :password)
    return redirect_to controller: 'sessions', action: 'new' unless authenticate
    session[:user] = user
  end

  def destroy

  end
end
