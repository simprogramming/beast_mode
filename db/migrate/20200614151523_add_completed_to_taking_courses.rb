class AddCompletedToTakingCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :taking_courses, :completed, :boolean, default: false
  end
end
