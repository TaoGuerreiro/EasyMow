class AddSpeedToTractor < ActiveRecord::Migration[5.2]
  def change
    add_column :tractors, :speed, :integer
  end
end
