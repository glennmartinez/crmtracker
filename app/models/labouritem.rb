class Labouritem < ActiveRecord::Base
  attr_accessible :description, :hours, :total, :contractor_id, :contractor_name


  belongs_to :quote
  belongs_to :contractor

  attr_protected :id
   # accepts_nested_attributes_for :contractors


end
