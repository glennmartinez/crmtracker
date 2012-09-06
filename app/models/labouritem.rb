class Labouritem < ActiveRecord::Base
  attr_accessible :description, :hours, :total


  belongs_to :quote
  belongs_to :contractor

  attr_protected :id
   accepts_nested_attributes_for :contractors


end
