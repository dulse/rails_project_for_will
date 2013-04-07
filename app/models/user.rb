class User < ActiveRecord::Base
  has_and_belongs_to_many :enrollments, class_name: 'Course'
  has_many :taught_courses, class_name: 'Course', foreign_key: :tutor_id
end
