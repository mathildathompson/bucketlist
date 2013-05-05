class Like < ActiveRecord::Base
  attr_accessible :to_do_item_id, :user_id
  belongs_to :user
  belongs_to :to_do_item
end
