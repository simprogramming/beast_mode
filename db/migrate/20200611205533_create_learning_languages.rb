class CreateLearningLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :learning_languages do |t|
      t.references :language_id, null: false, foreign_key: true
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
