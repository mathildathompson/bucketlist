class DestinationsController < ApplicationController
	# def index
	# end

	def new
	end

	def create
		@destination_id = params['format']
		# binding.pry
		@destination = Destination.where(id:@destination_id)
		# binding.pry
		render :template => 'destinations/create', :content_type => 'text/javascript'

		# binding.pry
		# @to_do_items= ToDoItem.where(destination_id:@destination_id)
		# @tdiarray = []
		# @to_do_items.each do |x|
		#   name = x.name
		#   @tdiarray << name

  #       @comments = []
		# @to_do_items.each do |tdi|
		#  # binding.pry
		#   comment = Comment.where(to_do_item_id:tdi.id)
		#  # binding.pry
		#   @comments << comment
		end
		  # binding.pry
	# 	end
	# end
end
