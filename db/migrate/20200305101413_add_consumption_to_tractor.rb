class AddConsumptionToTractor < ActiveRecord::Migration[5.2]
  def change
    add_column :tractors, :consumption, :integer
  end
end
