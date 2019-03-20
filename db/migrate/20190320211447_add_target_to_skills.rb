class AddTargetToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :target, :integer
  end
end
