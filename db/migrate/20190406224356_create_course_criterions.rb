class CreateCourseCriterions < ActiveRecord::Migration[5.2]
  def change
    create_table :course_criterions do |t|
      t.integer :score
      t.references :course, foreign_key: true
      t.references :criterion, foreign_key: true

      t.timestamps
    end
  end
end
