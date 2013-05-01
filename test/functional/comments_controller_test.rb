require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  context "Ac comment" do
  	context "POST to/comments" do
  		setup do
  			@to_do_item = ToDoItem.create
  			post :create, comment: { body: "Blah", to_do_item_id: @to_do_item.id}
  	end

  	should "increase the comment count" do
  		assert_equal 1, Comment.count
  	end

  	should "have an associated to do item" do
  		assert_equal assigns(:comment).to_do_item, @to_do_item
  	end

  	should "give a HTTP 200" do
  		get :index
  		assert_response :success
  	end

  end
 end
end

#this needs to be edited!

context "A AJAX request to create" do
  setup do
    xhr :post, :create, :comment => {:body => "blah"}
  end

  should "respond with JS" do
    assert_response :success
    assert_equal response.content_type, 'text/javascript'
    assert_not_nil assigns(:comment)
    