class InvoicesController < ApplicationController

before_filter :find_quote, :only => [:index, :new, :show, :create]

def index
	@invoices = @quote.invoices 
	
end

def new
	@invoice = Invoice.new(:quote => @quote)
end

def create
	@invoice = @quote.invoices.build(params[:invoice])

	@quote.labouritems.all.each do |li|
		@invoice.labouritems.build li.attributes
	end
 	if @invoice.save
		redirect_to [@quote, @invoice], notice: 'Invoice was successfully create.'
	else
		render action: "new"
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

