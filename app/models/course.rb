class Course < ActiveRecord::Base
  has_many :enrollments
  has_many :students, through: :enrollments

  def self.list
    pluck(:course_name).join(', ')
  end
end
