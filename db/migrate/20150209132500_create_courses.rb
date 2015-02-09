class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.string :level
      t.datetime :starts
      t.datetime :ends
      t.integer :classroom_id

      t.timestamps null: false
    end
  end
end
