class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :messages
  validates :title, :context, presence: true
  validates :title, length: { minimum: 7 }

  before_destroy :delete_messages

  private

  def delete_messages
    self.messages.destroy_all
  end

end
