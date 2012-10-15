class AddBodyToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :body, :string
  end
end
