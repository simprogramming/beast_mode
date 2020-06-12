class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :link
      t.references :language, null: false, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
