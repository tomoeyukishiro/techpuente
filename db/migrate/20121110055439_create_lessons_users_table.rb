class CreateLessonsUsersTable < ActiveRecord::Migration
  def up
    create_table :lessons_users, :id => false do |t|
      t.integer :lesson_id
      t.integer :user_id
      end
  end

  def down
    #drop_table :resturants_users
  end
end
