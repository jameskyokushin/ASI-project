class MarketingsController < ApplicationController

	def index

	end
	
	def new
 		@marketings = Marketing.new
  end
end
