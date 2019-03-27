class AddCompletedToDayskills < ActiveRecord::Migration[5.1]
  def change
    add_column :dayskills, :completed, :boolean, null: false, default: false 
  end
end
