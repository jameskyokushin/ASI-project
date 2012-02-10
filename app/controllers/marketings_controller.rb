class MarketingsController < ApplicationController




	def index
		@marketings = Marketing.all
	end
	
	def new
 		@marketing = Marketing.new
  end

	def create
		@marketing = Marketing.new(params[:marketing])
		@marketing.save
		flash[:notice] = "Save to the Database"
		render :action => "show"
	end
	
	def show
		@marketing = Marketing.find(params[:id])
	end
end
