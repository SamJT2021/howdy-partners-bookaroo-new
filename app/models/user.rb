class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  has_secure_password
  has_many :posts

  before_save :set_default_profile_picture

  def set_default_profile_picture
    self.profile_picture = "https://lh3.googleusercontent.com/proxy/o4g3witOQP5IKgMnR271nEd2NwM-CetBeNdsl5z_Mozw-wrAXi30uBNL4-ckj4dFNA5Z_BsZ6fLDMVa0AZBg_xhw9A" if self.profile_picture.blank?
  end
end
