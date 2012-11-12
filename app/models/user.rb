class User < ActiveRecord::Base
  has_and_belongs_to_many :lessons
  #attr_accessor :first_name, :last_name, :middle_name
  #attr_accessible :email, :password, :password_confirmation
  attr_accessible :first_name, :last_name, :middle_name, :email, :password, :password_confirmation, :admin
  has_secure_password

  validates_presence_of :password, :on => :create
  validates_presence_of :email 
  validates_uniqueness_of :email

end
