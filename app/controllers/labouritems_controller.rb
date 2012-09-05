class LabouritemsController < ApplicationController


def index
	@labouritems = Labouritem.all 
end

def new
	
end

def create
	@labouritem = @quote.labouritems.build(params[:labouritem])

	if @labouritem.save
	
	
	
end


end
