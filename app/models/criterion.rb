class Criterion < ApplicationRecord
  has_many :course_criterion
  has_many :courses, through: :course_criterion
end
