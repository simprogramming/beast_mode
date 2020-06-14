class Course < ApplicationRecord
  belongs_to :language
  belongs_to :user
  has_many :taking_courses
end
