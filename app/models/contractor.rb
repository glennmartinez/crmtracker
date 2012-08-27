class Contractor < ActiveRecord::Base
  attr_accessible :active, :email, :firstname, :surname, :quote_attributes


  has_many :projectships
  has_many :projects, :through => :labelships

  has_many :quoteships
  has_many :quotes, :through => :quoteships
  

end
