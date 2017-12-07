class Book < ApplicationRecord
  has_attached_file :cover, :styles => { :large => "1000x1524", :medium => "500x762>", :thumb => "100x152>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
end
