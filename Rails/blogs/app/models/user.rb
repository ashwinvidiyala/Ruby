class User < ActiveRecord::Base
  has_many :comments, as: :commentable
  has_many :messages
  has_many :posts
  has_many :owners
  has_many :blogs_posted_on, through: :posts, source: :blog
  has_many :blogs_owned, through: :owners, source: :blog
end
