class AddCourseCapacity < ActiveRecord::Migration
  def change
    rename_table :course, :courses
    add_column :courses, :capcity, :integer
  end
end
