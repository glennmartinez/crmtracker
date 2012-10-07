class Labouritem < ActiveRecord::Base
  attr_accessible :description, :hours, :total, :contractor_id, :contractor_name,
   :contractor_rate, :muppercent,:muphourrate, :muptotal,:progress_percent,:progress_payment,
  :start_date, :end_date, :days_remaining, :days_completed, :total_days

      
  belongs_to :quote
  belongs_to :contractor

  attr_protected :id
   # accepts_nested_attributes_for :contractors


end
