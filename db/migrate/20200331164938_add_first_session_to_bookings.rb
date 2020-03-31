class AddFirstSessionToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :first_session, :string
  end
end
