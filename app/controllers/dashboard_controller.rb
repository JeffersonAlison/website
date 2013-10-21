class DashboardController < ApplicationController
  before_filter :authenticate_admin_user!
  layout 'dashboard'
  
  def index
  	@postnotices = Postnotice.all
  end
end
