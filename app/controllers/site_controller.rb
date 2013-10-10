class SiteController < ApplicationController
	layout "application"
  def index
  	@postnotices = Postnotice.all
  end
end
