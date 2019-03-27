class AddHardToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :hard, :boolean, null: false, default: false 
  end
end
