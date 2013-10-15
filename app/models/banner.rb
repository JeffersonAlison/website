class Banner < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	attr_accessible :image, :name, :position
	
	validate :exist_position

protected
    def exist_position
 	   errors.add(:position, "ja cadastrada") if Banner.where(:position => 1..4).select(:position).exists?(:position => (position))
    end

	
end
