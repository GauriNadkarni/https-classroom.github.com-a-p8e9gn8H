class AddCriterionDescriptionToCriterions < ActiveRecord::Migration[5.2]
  def change
    add_column :criterions, :criterion_description, :string
  end
end
