class Category < ActiveRecord::Base
  attr_accessible :name, :category_id
  has_many :cards

  def show_category
  	"#{name}"
  end
end
