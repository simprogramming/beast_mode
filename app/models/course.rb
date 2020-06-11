class Course < ApplicationRecord
  belongs_to :language
  belongs_to :user, through: :taking_courses
end
