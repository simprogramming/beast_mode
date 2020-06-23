class LearningLanguage < ApplicationRecord
  belongs_to :language
  belongs_to :user

  validates :language, presence: true
  validates :user, presence: true
  # validates :language_id, presence :true, inclusion: { in: [ Language.all ], message: "%{value} is not a language in the database. Please add it to the database first." }
end
