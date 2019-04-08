class CreateCoursefaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :coursefaculties do |t|
      t.references :course, foreign_key: true
      t.references :faculty, foreign_key: true

      t.timestamps
    end
  end
end
