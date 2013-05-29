class City < ActiveRecord::Base
  attr_accessible :name, :city_id, :country_id
  belongs_to :country
  has_many :cards
end
