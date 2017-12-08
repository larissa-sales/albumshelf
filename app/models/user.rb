class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :albums
  has_many :books
  validates_uniqueness_of :user_name
  validates :first_name, :last_name, :user_name, presence: true, allow_blank: false
end
