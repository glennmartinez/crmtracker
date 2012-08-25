class Contractor < ActiveRecord::Base
  attr_accessible :active, :email, :firstname, :surname


  has_many :projectships
  has_many :projects, :through => :labelships
  

end
