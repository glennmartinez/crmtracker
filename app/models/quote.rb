class Quote < ActiveRecord::Base
  attr_accessible :name, :status, :contractor_attributes

  belongs_to :project


  has_many :quoteships
  has_many :contractors, :through => :quoteships

  accepts_nested_attributes_for :project
  accepts_nested_attributes_for :contractors

end
