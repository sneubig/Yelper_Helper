class BarsController < ApplicationController
	
	def index
	end

	def search

		location = params[:location]
	  parameters = { term: 'beer', limit: 10 }
	  @founded = Yelp.client.search( location, parameters )
	
	end

end