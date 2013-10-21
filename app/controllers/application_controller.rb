class ApplicationController < ActionController::Base
  protect_from_forgery

   layout Proc.new { |controller| controller.devise_controller? ? 'login' : 'application' }

unless Rails.application.config.consider_all_requests_local
    rescue_from Exception, with: lambda { |exception| render_error 500, exception }
    rescue_from ActionController::RoutingError, ActionController::UnknownController, ::AbstractController::ActionNotFound, ActiveRecord::RecordNotFound, with: lambda { |exception| render_error 404, exception }
  end

  private
  def render_error(status, exception)
    respond_to do |format|
      format.html { render template: "errors/error_#{status}", layout: 'layouts/application', status: status }
      format.all { render nothing: true, status: status }
    end
  end
   
   
	 def resource_name
	    :user
	  end
	 
	  def resource
	    @resource ||= User.new
	  end
	 
	  def devise_mapping
	    @devise_mapping ||= Devise.mappings[:user]
	  end

	  #ve se é o adm
	def authenticate_admin_user!
	  authenticate_user! 
	  unless current_user.level == 0
	    flash[:alert] = "This area is restricted to administrators only."
	    redirect_to root_path 
	  end
	end
 
	def current_admin_user
	  return nil if user_signed_in? && (!current_user.level == 0)
	  current_user
	end

private
  def after_sign_in_path_for(resource_or_scope)
    "/dashboard"
  end

end
