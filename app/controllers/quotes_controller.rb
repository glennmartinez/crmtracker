class QuotesController < ApplicationController
	
	before_filter :load_contractors 
	before_filter :find_project, :only => [:new, :create]
	before_filter :load_labelitems, :only => :show


def index

	@quotes = Quote.all
	   @quote = Quote.find(params[:quote_id])
	 @contractors = Contractor.search(params[:search])   

	
end

def new
	# @quote = Quote.new
	@quote = @project.quotes.build
	@quote.contractors.build 

	respond_to do |format|

    format.html # new.html.erb

    format.json { render json: @quote }

  end

end


def add_labouritem
	@quote = Quote.find(params[:quote_id])
	# @labourItem = Labouritem.new(params[:labouritem])
	@labouritem = @quote.labouritems.build(params[:labouritem])
	# @quote.labouritems << @labourItem

	if @labouritem.save
		redirect_to @quote, notice: "Added Line Item"
	else
		render :show, notice: "Sorry, something went wrong"
	end
end

def add_contractor
	@quote = Quote.find(params[:quote_id])
	@contractor = Contractor.find(params[:contractor_id])
	@quote.contractors << @contractor

	if @quote.save
		redirect_to @quote, notice: "contractor was added"
	else
		render :show, notice: "Sorry, something went aweful"
	end

end

def get_contractor
	 @quote = Quote.find(params[:quote_id])
	@contractors = Contractor.search(params[:search])   
end

def create
	# @quote = Quote.new(params[:quote])
		@quote = @project.quotes.build(params[:quote])
    respond_to do |format|
      if @quote.save
        format.html { redirect_to @quote, notice: 'Project was successfully created.'  }
        # format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        # format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
end

def show
	@quote = Quote.find(params[:id])
	  # @labourship = Labourship.new
	 @labouritem = @quote.labouritems.build

	# @labourship.contractors.build
	# @contractors = Contractor.search(params[:search])   

end

private
def load_contractors
	@contractors = Contractor.all
end

private
def find_project
	@project = Project.find(params[:project_id])
end

private
def load_labelitems
	 # @labelitems = Labeitem.all
	    # @labourship = @quote.labourships.build

	
end
end
