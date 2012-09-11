class LabouritemsController < ApplicationController
	before_filter :find_quote 
	before_filter :get_contractors

def index
	@labouritems = Labouritem.all 
end

def new

	@labouritem = @quote.labouritems.build
	 @labouritem.contractors.build 
	
end

def create
	@labouritem = @quote.labouritems.build(params[:labouritem])
	@contractor = Contractor.find(params[:contractor_id])
	@labouritem.contractors << @contractor


	if @labouritem.save
	format.html { redirect_to @quote, notice: 'Client was successfully created.' }
	end

	
end


def find_quote
	@quote = Quote.find(params[:quote_id])
	
end

def get_contractors
	@contractors = Contractor.all 
	
end

end
