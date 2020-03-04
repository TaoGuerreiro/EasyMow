class AddLastnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :lasttname, :string
  end
end
