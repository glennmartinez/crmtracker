class SuppliersController < ApplicationController
	autocomplete :supplier, :name, :full => true



def index

	@suppliers = Supplier.all
	
end

def new
	@supplier = Supplier.new
end

def create
	@supplier = Supplier.new(params[:supplier])
	if @supplier.save
		redirect_to @supplier
	else
		render :action => 'new'
	end
end

def show
	@supplier = Supplier.find(params[:id])
	    # @client = Client.find(params[:client_id])

end


end
