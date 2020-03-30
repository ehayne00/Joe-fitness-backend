class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.time :time
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
