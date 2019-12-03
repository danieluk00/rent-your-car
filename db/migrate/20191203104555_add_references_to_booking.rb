class AddReferencesToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :car, foreign_key: true
  end
end
