class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  has_secure_password
  has_many :posts

  before_save :set_default_profile_picture

  def set_default_profile_picture
    self.profile_picture = "https://cdn.pixabay.com/photo/2014/04/03/10/40/cowboy-311087_960_720.png" if self.profile_picture.blank?
  end
end
