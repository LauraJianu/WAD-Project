class Category < ActiveRecord::Base
  has_many :albums
  validates :category_id, presence: true
end
