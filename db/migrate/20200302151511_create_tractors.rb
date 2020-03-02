class CreateTractors < ActiveRecord::Migration[5.2]
  def change
    create_table :tractors do |t|
      t.string :photo
      t.string :title
      t.string :description
      t.integer :price_per_day

      t.timestamps
    end
  end
end
