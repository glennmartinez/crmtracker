class Project < ActiveRecord::Base
  attr_accessible :description, :name, :status

  belongs_to :client
  belongs_to :user
  has_many :quotes,:dependent => :destroy
  has_many :projectships
end
