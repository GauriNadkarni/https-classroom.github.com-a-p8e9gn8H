class Course < ApplicationRecord
  alias_attribute :criteria_assignments, :course_criterion
  has_many :course_criterion
  has_many :coursefaculty

  has_many :criteria, through: :course_criterion, source: :criterion
  has_many :faculties, through: :coursefaculties, source: :faculty

  require 'csv'
  def self.import(file)

    CSV.foreach(file.path, headers: true) do |row|
      #  Faculty.create! (row.to_hash)

      faculty_hash=Course.new
      faculty_hash.name = row[0]

      faculty_hash.save

      # last_name, first_name, title, office_number, email_address, phone_number
    end
  end

  def total_score
    unless course_criterion.length == 0
      self.course_criterion.map(&:score).sum / course_criterion.length
    else
      0
    end
  end

  def highest_score
    unless course_criterion.lengt == 0
      self.course_criterion.map(&:score).max {|a, b|}
    end
  end
end
