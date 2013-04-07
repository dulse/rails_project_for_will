class CreateEverything < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :email
      t.string :name
      t.text :description
    end

    create_table :course do |t|
      t.integer :course_id
      t.string :topic
      t.integer :tutor_id
      t.text :description
      t.text :syllabus
    end

    create_table :users_courses do |t|
      t.integer :user_id
      t.integer :course_id
    end

    create_table :sessions do |t|
      t.integer :session_id
      t.integer :course_id
      t.datetime :start_time
      t.datetime :end_time
    end
  end
end
