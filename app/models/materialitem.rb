class Materialitem < ActiveRecord::Base
  attr_accessible :material_total, :name, :quantity, :supplier_id

  belongs_to :quote 

  attr_protected :id


end
