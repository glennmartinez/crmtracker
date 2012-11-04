class MaterialitemsController < ApplicationController
before_filter :find_quote 
	
def index

	@materialitems = Materialitems.all
	gon.materialitem = @materialitems

	
end

def new

	@materialitem = @quote.materialitems.build
	
end




def find_quote
	@quote = Quote.find(params[:quote_id])

end

end
