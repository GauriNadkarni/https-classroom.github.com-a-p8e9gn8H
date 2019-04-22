class CourseEvaluation < ApplicationRecord
  belongs_to :faculty
  belongs_to :course
  belongs_to :criterion

  # after_initialize :default_values
  #
  # private
  # def default_values
  #   faculty_id.value ||=current_user.id
  # end


  before_save :calculate_percent

  def calculate_percent
    poor=self.poor

  exceeds = self.exceeds
   acceptable= self.exceeds
  total = poor.to_i+exceeds.to_i+acceptable.to_i
    self.poor = poor.to_i * 100 /total.to_i
    self.acceptable = acceptable.to_i * 100 /total.to_i
    self.exceeds= exceeds.to_i * 100 / total.to_i
    # self.exceeds= total
end
end