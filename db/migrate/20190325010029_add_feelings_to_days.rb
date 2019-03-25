class AddFeelingsToDays < ActiveRecord::Migration[5.1]
  def change
    add_column :days, :feelings, :string
  end
end
