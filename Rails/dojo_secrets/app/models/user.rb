class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  has_secure_password
  validates_presence_of :name, :password
  validates :email, presence: true, uniqueness: { case_sensitive: false },
            format: { with: EMAIL_REGEX }

  before_save { self.email.downcase! }

end
