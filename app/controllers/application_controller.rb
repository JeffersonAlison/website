class ApplicationController < ActionController::Base
  protect_from_forgery
    unless Rails.application.config.consider_all_requests_local
		rescue_from Exception, :with => :render_500
		rescue_from ActiveRecord::RecordNotFound, :with => :render_404
		rescue_from ActionController::RoutingError, :with => :render_404
	end

	def render_500
		render :template => "errors/500.html.erb", :layout => "message", :status => "500"
	end

	def render_404
		render :template => "errors/404.html.erb", :layout => "message",  :status => "404"
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
