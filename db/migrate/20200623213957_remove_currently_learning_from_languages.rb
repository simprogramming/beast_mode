class RemoveCurrentlyLearningFromLanguages < ActiveRecord::Migration[6.0]
  def change
    remove_column :languages, :currently_learning
  end
end
