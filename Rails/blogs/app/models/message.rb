class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :author, source: :user
  validates :author, :message, presence: true
  validates :message, length: { minimum: 15 }
end
