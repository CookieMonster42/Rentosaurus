class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :dinosaur, foreign_key: true
      t.datetime :time_start
      t.datetime :time_end

      t.timestamps
    end
  end
end
