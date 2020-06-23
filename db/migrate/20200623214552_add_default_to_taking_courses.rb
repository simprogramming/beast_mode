class AddDefaultToTakingCourses < ActiveRecord::Migration[6.0]
  def change
    change_column :taking_courses, :currently_taking, :boolean, default: false
  end
end
