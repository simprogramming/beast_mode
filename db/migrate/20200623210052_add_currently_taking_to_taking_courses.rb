class AddCurrentlyTakingToTakingCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :taking_courses, :currently_taking, :boolean
  end
end
