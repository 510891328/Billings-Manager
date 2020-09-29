class ApplicationController < ActionController::Base
  before_action :current_user
  def current_user
    @user = User.find_by(email: session[:user_email]) || User.new
  end

  def login?
    current_user.id != nil
  end

  def required_login
    return redirect_to(controller: 'sessions', action: 'new') unless login?
  end
end
