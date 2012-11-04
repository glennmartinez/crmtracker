class Invoice < ActiveRecord::Base
  belongs_to :quote


  attr_accessible :client, :date

  has_many :labouritems

 

end
