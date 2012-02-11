class PagesController < ApplicationController
	
  def home

  end

	def clientpage

	end

	def marketingleads

	end
	
	def salescalls
	end

	def coldcalls
	  @sales = Sale.all 
	end
	
	
end	
