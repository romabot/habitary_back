class AddNameToDayskills < ActiveRecord::Migration[5.1]
  def change
    add_column :dayskills, :name, :string
  end
end
