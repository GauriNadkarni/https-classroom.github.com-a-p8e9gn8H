class RemoveScoreFromCourseCriterions < ActiveRecord::Migration[5.2]
  def change
    remove_column :course_criterions, :score, :string
  end
end
