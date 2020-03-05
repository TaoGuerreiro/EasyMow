class AddAddressToTractors < ActiveRecord::Migration[5.2]
  def change
    add_column :tractors, :address, :string
  end
end
