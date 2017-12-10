class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :avatar, :styles => { :large => "1000x1000", :medium => "600x600>", :thumb => "150x150>" }, :default_url => ""
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_many :albums
  has_many :books
  validates_uniqueness_of :user_name
  validates :first_name, :last_name, :user_name, presence: true, allow_blank: false
end
