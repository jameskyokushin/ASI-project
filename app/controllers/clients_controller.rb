class ClientsController < ApplicationController
	
	def index
		@clients = Client.all
	end

	def new
		@client = Client.new
	end

	def create
		@client = Client.new(params[:client])
		if @client.save
			flash[:notice] = "Client ay na saved."
			render :action => "show"
		else
			flash[:alert] = "Client hindi na saved"
			render :action => "new"
		end
	end
	
	def show
		@client = Client.find(params[:id])
	end


end
