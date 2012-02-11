class SalesController < ApplicationController
	def new
		@sale = Sale.new
	end
	def create
		@sale = Sale.new(params[:sale])
		if @sale.save
			flash[:notice] = "Sales Call Successfully Saved."
			render :action => "show"
		else
			flash[:alert] = "Sales Call Not Saved"
			render :action => "new"
		end
	end
	
	
end
