class Labouritem < ActiveRecord::Base
  attr_accessible :description, :hours, :total


  belongs_to :quotes
  belongs_to :contractors

  attr_protected :id
  accepts_nested_attributes_for :contractors


end
