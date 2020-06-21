class Course < ApplicationRecord
  belongs_to :language
  has_many :taking_courses
end
