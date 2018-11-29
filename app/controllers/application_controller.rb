class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_action :configure_permitted_parameters, if: :devise_controller?

  #   protected

  #       def configure_permitted_parameters
  #           # devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
  #           devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:fname, :lname, :age, :role, :email, :password, :current_password) }
  #       end
    before_action :configure_permitted_parameters, if: :devise_controller?

	  protected

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:fname,:lname,:age,:email, :password, :credit_card, :cvv, :expiration, :address) }
	    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:fname,:lname,:age,:email, :password, :password_confirmation, :current_password, :credit_card, :cvv, :expiration, :address) }
	  end

	def after_sign_in_path_for(resource)
        
		if resource.class == User
		   root_path
		elsif resource.class == AdminUser
		   admin_root_path
		else
		end


	end
end
