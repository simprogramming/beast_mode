class LearningLanguage < ApplicationRecord
  belongs_to :language_id
  belongs_to :user_id
end
