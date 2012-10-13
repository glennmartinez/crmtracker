class Supplier < ActiveRecord::Base
  has_many :materialitems
  
  attr_accessible :email, :name
end
