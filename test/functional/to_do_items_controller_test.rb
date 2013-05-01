require 'test_helper'

class ToDoItemsControllerTest < ActionController::TestCase

	context "The ToDoItems Controller" do
		setup do 
			3.times {ToDoItem.create}
		end

		context "GET to index" do
			setup do
				get :index
		end

		should "give me a HTTP 200" do
			get :index
			assert_response :success
		end

		should "give me 3 ToDoItems" do
			assert_equal 3, assigns(:to_do_items).length
			assert_equal ToDoItem, assigns(:to_do_items).first.class
		end
	   end

        context "GET to show" do
        	setup do
        		get :show, :id => 1
        	end

        should "give me a HTTP 200" do
			assert_response :success
		end

		should "give me 1 ToDoItems" do
			assert_equal ToDoItem.find(1), assigns(:to_do_item)
		end
	  end
	end
end
