class AddCurrentlyLearningToLearningLanguages < ActiveRecord::Migration[6.0]
  def change
    add_column :learning_languages, :currently_learning, :boolean
  end
end
