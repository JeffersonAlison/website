class City < ActiveRecord::Base
  attr_accessible :name, :uf

  has_many :postnotices
end
