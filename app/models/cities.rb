class Cities < ActiveRecord::Base
  attr_accessible :city
  belongs_to :country
end
