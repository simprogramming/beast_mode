class Language < ApplicationRecord
  has_many :courses
  has_many :learning_languages
end
