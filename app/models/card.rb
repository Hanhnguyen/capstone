class Card < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true
  validates :user_id, presence: true 

  belongs_to :user
  belongs_to :country, :through => :city
end
