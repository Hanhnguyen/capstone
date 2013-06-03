class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable #:recoverable,

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :avatar
  # attr_accessible :title, :body

  validates_attachment :avatar, presence: true, content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            										size: { less_than: 5.megabytes }
  has_many :cards
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "50x50>" }
 end
