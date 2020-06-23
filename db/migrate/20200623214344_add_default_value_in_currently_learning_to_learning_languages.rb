class AddDefaultValueInCurrentlyLearningToLearningLanguages < ActiveRecord::Migration[6.0]
  def change
    change_column :learning_languages, :currently_learning, :boolean, default: false
  end
end
