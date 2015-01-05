class BarsController < ApplicationController
	
	def index
		@bars = Bar.all
	end

	def search
		if
			location = params[:location]
		  parameters = { term: 'bar', limit: 10 }
		  @founded = Yelp.client.search( location, parameters )
	  else
	    redirect_to root_path
	  end
	
	end

end