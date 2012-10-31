class AddNextAndPrevToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :next, :integer
    add_column :lessons, :prev, :integer
  end
end
