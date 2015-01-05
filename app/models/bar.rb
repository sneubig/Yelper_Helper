require 'yelp'

class Bar < ActiveRecord::Base

	after_initialize(:init)

	def init
		Yelp.client.configure do |config|
  		config.consumer_key = ENV['YELP_CONSUMER_KEY']
  		config.consumer_secret = ENV['YELP_CONSUMER_SECRET']
  		config.token = ENV['YELP_TOKEN']
  		config.token_secret = ENV['YELP_TOKEN_SECRET']
		end
	end
end
