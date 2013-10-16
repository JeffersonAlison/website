class Postnotice < ActiveRecord::Base
  belongs_to :city
  belongs_to :categorie
  has_many :comment
  attr_accessible :author, :content, :title, :categorie_id, :city_id, :image, :remote_image_url, :featured, :video, :descbanner
  mount_uploader :image, ImageUploader
  validates_presence_of :title, :content, :categorie_id, :city_id, :descbanner
end
