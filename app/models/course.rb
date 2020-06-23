class Course < ApplicationRecord
  belongs_to :language
  has_many :taking_courses

  validates :language, presence: true
  validates :name, presence: true
  validates :link, presence: true, uniqueness: true
end
