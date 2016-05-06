class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def current_user
    return @current_user if @current_user
    unless current_user_username.blank?
      @current_user = User.new(current_user_username, current_user_extra_attributes)
    end
    @current_user
  end
  helper_method :current_user

  private

  def current_user_username
    session[RubyCAS::Filter.client.username_session_key]
  end

  def current_user_extra_attributes
    session[RubyCAS::Filter.client.extra_attributes_session_key]
  end
end
