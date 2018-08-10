class Album < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :reviews

  has_attached_file :album_img, :styles => { :album_index => "250x350>", :album_show => "325x475>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :album_img, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :album_img, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
