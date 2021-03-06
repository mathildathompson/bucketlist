class ToDoItem < ActiveRecord::Base
  attr_accessible :completed, :name, :location, :latitude, :longitude, :destination_id
  has_many :likes
  # validates :location, :presence => true

  # geocoded_by :my_cool_geocoding_method
  #name of the method
  # after_validation :geocode
  #make sure that the name and location are there and then puts the location co-ordinates into longitude and latitude
  has_many :comments
  belongs_to :destination
  belongs_to :user
  has_many :users, :through => :likes

  # def my_cool_geocoding_method
  # 	"#{self.location} #{destination.name}"
  # end
end
