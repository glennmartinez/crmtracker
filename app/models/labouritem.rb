class Labouritem < ActiveRecord::Base
  belongs_to :quotes
  attr_accessible :description, :hours, :total
end
