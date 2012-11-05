class User < ActiveRecord::Base
  attr_accessor :first_name, :last_name, :middle_name
  attr_accessible :email, :password, :password_confirmation
  has_secure_password

  validates_presence_of :password, :on => :create
  validates_presence_of :email 
  validates_uniqueness_of :email

end
