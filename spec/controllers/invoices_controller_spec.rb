require 'spec_helper'

describe InvoicesController  do
	before (:each) do
		@invoice_controller =  InvoicesController.new
	end
	it "should copy labour items from labouritems model" do

          @quote = Quote.new
          @quote.save

          @quote.reload

          @quote.labouritems  << Labouritem.new
          @quote.labouritems  << Labouritem.new
          labouritems_count = Labouritem.count

          post :create, {:quote_id => @quote.id}
          response.should be

          (Labouritem.count - labouritems_count).should == 2
	end
end
