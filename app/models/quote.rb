class Quote < ActiveRecord::Base
  attr_accessible :name, :status, :labourtotal, :materialtotal, :subtotal, :labouritem, :materialitem 

  # attr_accessible :contractor
  attr_accessible :materialitem
  attr_protected :id

  belongs_to :project

  has_many :labouritems,:dependent => :destroy
  has_many :materialitems, :dependent => :destroy
  has_many :quoteships, :dependent => :destroy
  has_many :contractors, :through => :quoteships
  has_many :invoices, :dependent => :destroy

  accepts_nested_attributes_for :project
  accepts_nested_attributes_for :contractors
  accepts_nested_attributes_for :labouritems
  accepts_nested_attributes_for :materialitems

 
end
