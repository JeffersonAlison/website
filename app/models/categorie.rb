class Categorie < ActiveRecord::Base
  attr_accessible :name

  has_many :postnotices
end
