class Project < ActiveRecord::Base
  attr_accessible :description, :name, :status

  belongs_to :client
  has_many :quotes
  has_many :projectships
  
  
end
