class User < ActiveRecord::Base
  has_many :friendships_friend, foreign_key: :user_id, class_name: 'Friendship'
  has_many :friends, through: :friendships_friend, source: :friend

  has_many :friendships_user, foreign_key: :friend_id, class_name: 'Friendship'
  has_many :users, through: :friendships_user, source: :user
end
