class Coursefaculty < ApplicationRecord
  belongs_to :course
  belongs_to :faculty
end
