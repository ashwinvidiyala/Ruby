class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret

  has_secure_password
  validates_presence_of :name
  # validates_presence_of :password, on: :create
  validates :email, presence: true, uniqueness: { case_sensitive: false },
            format: { with: EMAIL_REGEX }

  before_save { self.email.downcase! }

end
