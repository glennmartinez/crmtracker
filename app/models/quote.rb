class Quote < ActiveRecord::Base
  attr_accessible :name, :status, :labourtotal, :materialtotal, :subtotal, :labouritem, :materialitem 

  # attr_accessible :contractor
  attr_accessible :materialitem
  attr_protected :id

  belongs_to :project

  has_many :labouritems
  has_many :materialitems
  has_many :quoteships
  has_many :contractors, :through => :quoteships

  accepts_nested_attributes_for :project
  accepts_nested_attributes_for :contractors
  accepts_nested_attributes_for :labouritems
  accepts_nested_attributes_for :materialitems


 
end
