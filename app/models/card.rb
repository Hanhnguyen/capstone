class Card < ActiveRecord::Base
  attr_accessible :description, :image
 
  validates :description, presence: true
  validates :user_id, presence: true 
  validates_attachment :image, presence: true,
  															content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
 																size: { less_than: 5.megabytes }
  belongs_to :user #foreign key- user_id
  belongs_to :city #foreign key- city_id
  has_one :country, :through => :city

  has_attached_file :image, styles: { medium: "320x240" }

end
