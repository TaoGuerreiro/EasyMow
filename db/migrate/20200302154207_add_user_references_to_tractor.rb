class AddUserReferencesToTractor < ActiveRecord::Migration[5.2]
  def change
    add_reference :tractors, :user, index: true
  end
end
