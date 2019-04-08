class AddAdminToFaculty < ActiveRecord::Migration[5.2]
  def change
    add_column :faculties, :admin, :boolean
  end
end
