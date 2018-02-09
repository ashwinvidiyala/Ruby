class Blog < ActiveRecord::Base
  has_many :comments, as: :commentable
  has_many :owners
  has_many :posts
  has_many :user_owners, through: :owners, source: :user
  has_many :authors, through: :posts, source: :user
  has_many :messages, through: :posts
  validates :name, :description, presence: true
end
