class InvoicesController < ApplicationController

before_filter :find_quote, :only => [:index, :new, :show, :create]

def index
	@invoices = @quote.invoices 
	
end

def new
	@invoice = @quote.invoices.build


end

def create
	@invoice = @quote.invoices.build(params[:invoice])
 
 	respond_to do |format|
		if @invoice.save
			format.html {redirect_to [@quote, @invoice], notice: 'Invoice was successfully create.'}

		else
			format.html { render action: "new"}
		end
	end	
end



def show

	@invoice = Invoice.find(params[:id])
  @labouritems = @quote.labouritems
	
end

private
    def find_quote
      @quote = Quote.find(params[:quote_id])
    end


end
