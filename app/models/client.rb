class Client < ActiveRecord::Base
  has_many :projects
  attr_accessible :email, :firstname, :surname
end
