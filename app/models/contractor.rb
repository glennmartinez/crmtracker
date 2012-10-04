class Contractor < ActiveRecord::Base
  attr_accessible :active, :email, :firstname, :surname, :quote_attributes, :hourly_rate

  has_many :labouritems

  has_many :quoteships
  has_many :quotes, :through => :quoteships
  


	def self.search(search)
	  if search
	    where('firstname LIKE ?', "%#{search}%")
	  else
	    scoped
  	  end
    end

end
