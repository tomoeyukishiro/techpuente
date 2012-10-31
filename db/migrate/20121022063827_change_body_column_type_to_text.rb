class ChangeBodyColumnTypeToText < ActiveRecord::Migration
  def up
      change_column :lessons, :body, :text
  end
end
