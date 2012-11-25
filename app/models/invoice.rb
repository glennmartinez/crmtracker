class Invoice < ActiveRecord::Base
  belongs_to :quote


  attr_accessible :client, :date, :quote, :quote_id

  has_many :labouritems

 

end
