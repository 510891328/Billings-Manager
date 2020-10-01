class ApplicationController < ActionController::Base
  before_action :current_user
  helper_method :current_user
  helper_method :required_login
  helper_method :login?
  helper_method :skip_login
  def current_user
    @user = User.find_by(email: session[:user_email]) || User.new
  end

  def login?
    current_user.id != nil
  end

  def required_login
    return redirect_to(controller: 'sessions', action: 'new') unless login?
  end

  def skip_login
    if login?
      redirect_to user_path(current_user)
    end
  end
end
