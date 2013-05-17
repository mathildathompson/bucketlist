

class ToDoItemsController < ApplicationController
	def index 
		@to_do_items = ToDoItem.all
		@destinations = Destination.all
		@comments = Comment.all
	end

	def new
		@to_do_item = ToDoItem.new
	end

	def show 
		@to_do_item = ToDoItem.find(params[:id])
	end

	def create
		
		@to_do_item = ToDoItem.create(params[:to_do_item])
        @to_do_item.save!
		# render :template => 'to_do_items/newtodoitem'
		render :partial => 'to_do_items/create_to_do'
		# render :template => 'to_do_items/newtodoitem'

	end


	# respond_to do |format|
 #      if @to_do_item.save
 #        format.html { redirect_to @to_do_item, notice: 'Category was successfully created.' }
 #        format.json { render json: @to_do_item, status: :created, location: @to_do_item }
 #      else
 #        format.html { render action: "new" }
 #        format.json { render json: @to_do_item.errors, status: :unprocessable_entity }
 #      end
 #    end
   # end

   def like
   	@to_do_item = ToDoItem.find(params[:id])
   	@user = User.find(1)
	@item_id = params[:id]
   	@like = Like.create(:to_do_item_id => @to_do_item.id, :user_id => @user.id)
   	@like.save!

    # respond_to do |format|
    #     format.json { render :text=>params }
    # end

   end
end




