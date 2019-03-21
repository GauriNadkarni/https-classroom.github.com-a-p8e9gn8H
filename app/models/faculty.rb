class Faculty < ApplicationRecord
def self.import(file)

  CSV.foreach(file.path, headers: true) do |row|
    Faculty.create! (row.to_hash)
    end
  end
end
