class RemoveColumnsFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :starts, :string
    remove_column :courses, :ends, :string
  end
end
