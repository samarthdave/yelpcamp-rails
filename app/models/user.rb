class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :campgrounds
  
  has_many :comments
  
  before_save { self.email = email.downcase }
  before_save { self.username = username.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates_format_of :email, :with => VALID_EMAIL_REGEX
  validates :email, presence: true, length: {minimum: 6, maximum: 25},
    uniqueness: { case_sensitive: false }

  VALID_USERNAME_REGEX = /\A[a-z0-9\-_]+\z/i
  validates_format_of :username, :with => VALID_USERNAME_REGEX
  validates :username, presence: true, length: {minimum: 3, maximum: 25},
    uniqueness: { case_sensitive: false }

end
