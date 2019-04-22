class AddCourseNumberToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :course_number, :string
  end
end
