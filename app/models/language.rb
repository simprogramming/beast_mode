class Language < ApplicationRecord
  has_many :courses
  has_many :learning_languages

  validates :name, presence: true, uniqueness: true
end
