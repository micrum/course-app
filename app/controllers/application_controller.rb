class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def authorize
    unless Mentor.find_by(id: session[:mentor_id])
      redirect_to login_url, notice: 'Please log in'
    end
  end
end
