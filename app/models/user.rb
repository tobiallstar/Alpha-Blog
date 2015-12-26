class User < ActiveRecord::Base
  has_many :articles
  before_save {self.email = email.downcase }
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 3...25}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@(williams).(edu)+\z/i
  validates :email, presence: true, length: {in: 1...105}, uniqueness: {case_sensitive: false }, 
  format: { with: VALID_EMAIL_REGEX }
  # has_many :comments
  has_secure_password


end
