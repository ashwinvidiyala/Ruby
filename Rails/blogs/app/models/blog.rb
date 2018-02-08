class Blog < ActiveRecord::Base
  has_many :owners
  has_many :posts
  has_many :user_owners, through: :owners, source: :user
  has_many :authors, through: :posts, source: :user
  validates :name, :description, presence: true
end
