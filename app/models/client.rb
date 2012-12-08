class Client < ActiveRecord::Base
  
  has_many :projects, :dependent => :destroy
  attr_accessible :email, :firstname, :surname
end
