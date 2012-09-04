class ContractorsController < ApplicationController
	autocomplete :contractor, :firstname, :full => true 


def index

	@contractors = Contractor.all
	
end

def new
	@contractor = Contractor.new
end

def create
	@contractor = Contractor.new(params[:contractor])
	if @contractor.save
		redirect_to @contractor
	else
		render :action => 'new'
	end
end

def show
	@contractor = Contractor.find(params[:id])
	    # @client = Client.find(params[:client_id])

end

def update
	
end

def delete
	
end

end
