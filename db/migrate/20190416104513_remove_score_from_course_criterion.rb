class RemoveScoreFromCourseCriterion < ActiveRecord::Migration[5.2]
  def change
    remove_column :course_criterions, :score, :integer
  end
end
