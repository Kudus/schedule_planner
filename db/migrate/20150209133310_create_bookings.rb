class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :course_id
      t.string :status

      t.timestamps null: false
    end
  end
end
