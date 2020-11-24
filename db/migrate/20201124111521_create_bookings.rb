class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :parent_id
      t.integer :nanny_id

      t.timestamps
    end
  end
end
