class AddColumnsToClassrooms < ActiveRecord::Migration
  def change
    add_column :classrooms, :room, :string
    add_column :classrooms, :floor, :string
  end
end
