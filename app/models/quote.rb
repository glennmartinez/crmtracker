class Quote < ActiveRecord::Base
  attr_accessible :name, :status, :labouritem
  # attr_accessible :contractor

  attr_protected :id

  belongs_to :project

  has_many :labouritems
  has_many :quoteships
  has_many :contractors, :through => :quoteships

  accepts_nested_attributes_for :project
  accepts_nested_attributes_for :contractors
  accepts_nested_attributes_for :labouritems


 
end
