require 'spec_helper'

describe InvoicesController  do
	before (:each) do
		@invoice_controller =  InvoicesController.new
	end
	it "should copy labour items from labouritems model" do
          labouritems_count = Labouritem.count

          @quote = Quote.new
          @quote.save

          @quote.reload

          @quote.labouritems  << Labouritem.new
          (Labouritem.count - labouritems_count).should == 1
	end
end
