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
	@contractor.labouritems << @labouritem


	if @labouritem.save
	format.html { redirect_to @quote, notice: 'Client was successfully created.' }
	end

	
end

def update
      @labouritem = Labouritem.find(params[:id])
	  @quote = Quote.find(params[:quote_id])
	 	# @quote.update_attributes(params[:note])
	respond_to do |format|
      if @labouritem.update_attributes(params[:labouritem])
        format.html { redirect_to @labouritem, notice: 'quote was successfully created.' }
        format.json { render json: @labouritem, status: :created, location: @labouritem }
      else
        format.html { render action: "new" }
        format.json { render json: @labouritem.errors, status: :unprocessable_entity }
      end
    end
	
end

def destroy
    @labouritem = Labouritem.find(params[:id])
    @labouritem.destroy

    # respond_to do |format|
    #   format.html { redirect_to quotes }
    #   format.json { head :no_content }
    # end
end

def find_quote
	@quote = Quote.find(params[:quote_id])
	
end

def get_contractors
	@contractors = Contractor.all 
	
end

end
