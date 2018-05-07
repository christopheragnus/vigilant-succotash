class Musician < ApplicationRecord
  has_secure_password

  validates :password, :presence => true
  validates :password, :length => { :in => 6..200}
  validates :name, :email, :presence => true
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :format => { :with => /@/, :message => " is invalid" }

  has_many :posts, dependent: :destroy
  has_many :text_posts, dependent: :destroy

end
