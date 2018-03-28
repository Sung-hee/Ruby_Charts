class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # rescue_from CanCan::AccessDenied do |exception|
  #   flash[:alert] = "권한이 없습니다."
  #   redirect_to '/'
  # end
  protected

  def configure_permitted_parameters
    added_attrs = [:user_id, :nickname, :nick_pass, :phone, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
