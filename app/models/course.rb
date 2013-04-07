class Course < ActiveRecord::Base
  has_and_belongs_to_many :students, class_name: 'User'
  belongs_to :tutor, class_name: 'User', foreign_key: :tutor_id

  has_many :sessions
end
