class Quoteship < ActiveRecord::Base
  attr_accessible :contractor_id, :quote_id

belongs_to :quote 
belongs_to :contractor 

end
