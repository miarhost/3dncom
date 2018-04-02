class ApplicationController < ActionController::Base
	  protect_from_forgery with: :exception
	  before_action :authenticate_user!, only: [:comments]
	  before_action :configure_permitted_parameters, if: :devise_controller? 

   

	  protected
	  #def after_sign_in_path_for(resource)
	  		#sign_in_url = new_user_session_url
	  		#if request.referer == sign_in_url
	  			#super
	  		#else
		#request.referer || stored_location_for(resource) || root_path
	    #end
      #end

	   def configure_permitted_parameters
	    	devise_parameter_sanitizer.permit(:sign_up) do |user_params|
	    		user_params.permit(:name, :email, :password, :image, :image_cache, :password_confirmation)
	    	end
	    	devise_parameter_sanitizer.permit(:sign_in) do |user_params|
	    	user_params.permit(:name, :email, :password, :image, :image_cache)
            end
            devise_parameter_sanitizer.permit(:account_update) do |user_params|
            	user_params.permit(:name, :password, :password_confirmation, :current_password, :image, :image_cache)
            end
	    	 # devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :image, :image_cache) }
#devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:name, :email, :password, :image, :image_cache) }
            devise_parameter_sanitizer.permit(:sign_up) do |admin_params|
	        admin_params.permit(:name, :email, :password)
	    	end
	    	devise_parameter_sanitizer.permit(:sign_in) do |admin_params|
	    	admin_params.permit(:name, :email, :password)
	    	end
      
	   end
end
