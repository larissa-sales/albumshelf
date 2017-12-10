class Album < ApplicationRecord
  has_attached_file :cover, :styles => { :large => "450x450", :medium => "300x300>", :thumb => "150x150>" }, :default_url => "/images/:style/none.png"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
  has_and_belongs_to_many :books
  validates :title, :artist, presence: true, allow_blank: false
end
