class Student < ActiveRecord::Base
  belongs_to :dojo

  validates :first_name, :last_name, :email, presence: true, length: { minimum: 2 }
  validates :dojo, presence: true

  def cohort
    start_of_day = self.created_at.beginning_of_day
    end_of_day   = self.created_at.end_of_day
    Student.all.where.not(id: self.id)
               .where(created_at: start_of_day..end_of_day)
               .where(dojo_id: self.dojo_id)
  end
end
