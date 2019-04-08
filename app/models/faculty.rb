class Faculty < ApplicationRecord
  has_many :coursefaculties
  has_many :courses, through: :coursefaculties, source: :course
  require 'csv'
def self.import(file)

  CSV.foreach(file.path, headers: true) do |row|
  #  Faculty.create! (row.to_hash)

    faculty_hash=Faculty.new
faculty_hash.last_name = row[0]
    faculty_hash.first_name = row[1]
    faculty_hash.title = row[2]
    faculty_hash.office_number = row[3]
    faculty_hash.email= row[4]
    faculty_hash.phone_number = row[5]
    faculty_hash.save

    # last_name, first_name, title, office_number, email_address, phone_number
    end
end

  def full_name
    [first_name, last_name].join(' ')
  end

  def full_name=(name)
    split = name.split(' ', 2)
    self.first_name = split.first
    self.last_name = split.last
  end
end
