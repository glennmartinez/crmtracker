class QuotesController < ApplicationController
	before_filter :load_contractors

def index

	@quotes = Quote.all
	
end

def new
	@quote = Quote.new
	@quote.contractors.build 
	# @quote.build_project
	# @contractor = Contractor.new
	respond_to do |format|

    format.html # new.html.erb

    format.json { render json: @quote }

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

def create
	@quote = Quote.new(params[:quote])

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
end

private
def load_contractors
	@contractors = Contractor.all
end
end
