class ApplicationController < ActionController::Base
  before_action :authenticate_admin!


#   before_action :configure_permitted_parameters, if: :devise_controller?

#   def configure_permitted_parameters
#   devise_parameter_sanitizer.permit(:sign_up) do |admin_params|
#     admin_params.permit( :name, :role, :email, :password, :password_confirmation)
#   end
# end
end
