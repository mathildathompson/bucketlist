class DestinationsController < ApplicationController
	# def index
	# end

	def new
	end

	def create
		binding.pry
		@destination_id = params['searchid']
		# binding.pry
		@destination = Destination.where(id:@destination_id)
		#there are two destinations here, it is going to render the template twice
		# binding.pry
		render :template => 'destinations/create', :content_type => 'text/javascript'
		end
		  # binding.pry
	# 	end
	# end
end
