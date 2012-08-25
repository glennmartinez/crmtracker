class Projectships < ActiveRecord::Base
  attr_accessible :contractor_id, :project_id


  belongs_to :project
  belongs_to :contractor 
  
end
