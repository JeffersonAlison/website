class Comment < ActiveRecord::Base
  attr_accessible :author, :content, :ip, :postnotice

  belongs_to :postnotice
end
