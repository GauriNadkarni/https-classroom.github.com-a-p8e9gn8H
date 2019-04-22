class CreateCourseEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :course_evaluations do |t|
      t.integer :poor
      t.integer :acceptable
      t.integer :exceeds
      t.references :faculty, foreign_key: true
      t.references :course, foreign_key: true
      t.references :criterion, foreign_key: true

      t.timestamps
    end
  end
end
