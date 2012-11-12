class Lesson < ActiveRecord::Base
  # TODO validate params being passed in
  has_and_belongs_to_many :users
end
