class RemoveCompletedInCourses < ActiveRecord::Migration[6.0]
  def change
    remove_column :courses, :completed
  end
end
