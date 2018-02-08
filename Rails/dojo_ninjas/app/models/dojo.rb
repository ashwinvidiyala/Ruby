class Dojo < ActiveRecord::Base
  has_many :ninjas
  validates :name, :city, :state, presence: true
  validates :state, length: { is: 2}

  # Tried this but it doesn't work.
  
  before_destroy :destroy_ninjas

  def destroy_ninjas
    self.ninjas.destroy
  end

end
