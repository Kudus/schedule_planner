class RemoveColumnsFromClassrooms < ActiveRecord::Migration
  def change
    remove_column :classrooms, :name, :string
    remove_column :classrooms, :location, :string
  end
end
