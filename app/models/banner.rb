class Banner < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	attr_accessible :image, :name, :position

	def verifica_position
	    a = Banner.where(:position => 1..4).select(:position)
	    b = a.exists?(:position => (1 and 2 and 3))

	    if b
	      puts "------------------------------------------------------- beleza"
	    else
	      puts "--------------------------------------------------------- pau"
	    end
	end
end
