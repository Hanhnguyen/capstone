class Countries < ActiveRecord::Base
  attr_accessible :country
  has_many :cities
end
