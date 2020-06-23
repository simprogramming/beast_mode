class AddCurrentlyLearningToLanguages < ActiveRecord::Migration[6.0]
  def change
    add_column :languages, :currently_learning, :boolean
  end
end
