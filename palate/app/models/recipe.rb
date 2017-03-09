class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
<<<<<<< HEAD
  has_many :ratings
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
=======
  has_many :ratings 
  has_many :ingredients 

  def average_rating
     self.ratings.reduce(0) {|sum, rating| sum+ rating.value} / self.ratings.length
  end
>>>>>>> 0f806e68899de19a9a5bed25f4c758b14ee7d0b0
end
