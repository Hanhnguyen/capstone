class Card < ActiveRecord::Base
  attr_accessible :description, :image, :city_id, :image_remote_url, :more_info, :location, :latitude, :longitude, :link, :category_id
  geocoded_by :location
  after_validation :geocode, :if => :location_changed?

  validates :description, presence: true
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
  															content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
 																size: { less_than: 5.megabytes }
  belongs_to :user #foreign key- user_id
  belongs_to :city #foreign key- city_id
  belongs_to :category
  has_one :country, :through => :city

  has_attached_file :image, styles: { medium: "320x240>", large: "640x480>"}
	def image_remote_url=(url_value)
    self.image = URI.parse(url_value) unless url_value.blank?
    super
  end
end


