class CreateDayskills < ActiveRecord::Migration[5.1]
  def change
    create_table :dayskills do |t|
      t.integer :day_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
