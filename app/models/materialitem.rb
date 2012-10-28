class Materialitem < ActiveRecord::Base
  attr_accessible :material_total, :name, :quantity, :unitprice, :supplier_id

  belongs_to :quote 
  belongs_to :supplier

  attr_protected :id


  def supplier_name
  	supplier.name if supplier
  	
  end

  def supplier_name=(name)
  	self.supplier = Supplier.find_by_name(name) unless id.blank?
  	
  end


  def supplier_id
  	supplier.id if supplier
  	
  end

  def supplier_id=(id)
  	self.supplier = Supplier.find_by_id(id) unless id.blank?
  	
  end

end
