class Question < ActiveRecord::Base
  validates :name, :dojo_location, :favorite_language, presence: true
end
