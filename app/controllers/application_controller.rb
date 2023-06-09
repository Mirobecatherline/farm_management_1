class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
     protected
     rescue_from CanCan::AccessDenied do |exception|
  redirect_to root_url, alert: exception.message
end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :current_password])
  end 

 

end
