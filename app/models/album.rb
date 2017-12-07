class Album < ApplicationRecord
  has_attached_file :cover, :styles => { :large => "1000x1000", :medium => "600x600>", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
  has_and_belongs_to_many :books
end
