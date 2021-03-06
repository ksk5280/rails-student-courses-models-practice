class Student < ActiveRecord::Base
  has_many :addresses
  has_many :enrollments
  has_many :courses, through: :enrollments

  def self.first_names
    pluck(:first_name).join(", ")
  end

end
