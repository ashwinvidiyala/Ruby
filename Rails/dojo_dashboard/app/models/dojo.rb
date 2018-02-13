class Dojo < ActiveRecord::Base
  validates :branch, :street, :city, presence: true, length: { minimum: 2 }
  validates :state, presence: true, length: { is: 2}
end
