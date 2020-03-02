class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :tractor, foreign_key: true
      t.date :starting_date
      t.date :ending_date
      t.integer :total_price
      t.string :status

      t.timestamps
    end
  end
end
