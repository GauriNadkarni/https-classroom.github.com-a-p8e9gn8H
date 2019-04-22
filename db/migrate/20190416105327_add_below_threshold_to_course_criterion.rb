class AddBelowThresholdToCourseCriterion < ActiveRecord::Migration[5.2]
  def change
    add_column :course_criterions, :below_threshold, :integer
  end
end
