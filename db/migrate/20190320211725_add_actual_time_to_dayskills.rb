class AddActualTimeToDayskills < ActiveRecord::Migration[5.1]
  def change
    add_column :dayskills, :actual_time, :integer
  end
end
