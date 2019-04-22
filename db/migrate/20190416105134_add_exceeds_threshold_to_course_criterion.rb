class AddExceedsThresholdToCourseCriterion < ActiveRecord::Migration[5.2]
  def change
    add_column :course_criterions, :exceeds_threshold, :integer
  end
end
