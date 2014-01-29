

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

        respond_to do |format|
            if @to_do_item.save
              format.html { redirect_to @to_do_item, notice: 'User was successfully created.' }
              # binding.pry
              format.js   {}
              #This goes to the create.js.erb
              format.json { render json: @to_do_item, status: :created, location: @to_do_item }
            else
              format.html { render action: "new" }
              format.json { render json: @to_do_item.errors, status: :unprocessable_entity }
            end
          end

	end



   def like
   	@to_do_item = ToDoItem.find(params[:id])
   	@user = User.find(1)
   	@like = Like.create(:to_do_item_id => @to_do_item.id, :user_id => @user.id)

    respond_to do |format|
          if @like.save
            format.html { redirect_to @to_do_item, notice: 'User was successfully created.' }
            # binding.pry
            format.js   do 
              @item_id = params[:id]
            end
            #This goes to the create.js.erb
            format.json { render json: @to_do_item, status: :created, location: @to_do_item }
          else
            format.html { render action: "new" }
            format.json { render json: @to_do_item.errors, status: :unprocessable_entity }
          end
        end
    end

end




