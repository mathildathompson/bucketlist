require 'test_helper'

class ToDoItemTest < ActiveSupport::TestCase

	context "A to do item" do
		setup do
			@destination = Destination.create(:name => "New York")
			@to_do_item = ToDoItem.create(:name => "Drink Pickleback", :location => "618 Grand St.", 
				:destination => @destination)
		end

		should "put values in the lat and long" do
			assert_not_nil @to_do_item.latitude
			assert_not_nil @to_do_item.longitude
		end

		should "use a better input for geocoding" do
			assert_equal "618 Grand St. New York", @to_do_item.my_cool_geocoding_method
		end
	end
end
