class SiteController < ApplicationController
	layout "application"
  def index
  	@postnotices = Postnotice.all
  	@banners = Banner.all.take(4)

  end
end
