class Country < ActiveRecord::Base
  attr_accessible :name, :country_id
  has_many :cities
  has_many :cards, :through => :cities
  
  def show_name
  	"#{name}"
  end

end
