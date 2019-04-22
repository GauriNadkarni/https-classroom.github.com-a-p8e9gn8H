class AddAcceptableThresholdToCourseCriterion < ActiveRecord::Migration[5.2]
  def change
    add_column :course_criterions, :acceptable_threshold, :integer
  end
end
