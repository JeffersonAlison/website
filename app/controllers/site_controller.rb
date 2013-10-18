class SiteController < ApplicationController
	layout "application"
  def index
  	@postnotices = Postnotice.all
  	@banners = Banner.all.take(4)
  	@categories = Categorie.all
  	@cities = City.all
  end

  def search
  	@city = City.find params[:id]
  	@postnotices = @city.postnotices
  end

end
