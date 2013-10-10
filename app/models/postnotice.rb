class Postnotice < ActiveRecord::Base
  belongs_to :city
  belongs_to :categorie
  attr_accessible :author, :content, :title, :categorie_id, :city_id, :image, :remote_image_url
  mount_uploader :image, ImageUploader
end
