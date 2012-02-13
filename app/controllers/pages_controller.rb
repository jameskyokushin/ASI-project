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
		@sales = Sale.order('id desc')
		@marketings = Marketing.all
		@marketings = Marketing.order('id desc')
	end
	
	
end	
