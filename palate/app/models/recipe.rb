class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
  has_many :ratings
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
=======
  has_many :ratings
  has_many :ingredients
  accepts_nested_attributes_for :ingredients 
>>>>>>> 53b72995e81cf397b8c902e5d9fad434f2e099c9

  def average_rating
    ratings_array = this.ratings
     ratings_array.reduce(0) {|sum, rating| sum+ rating.value} / ratings_array.length
  end
<<<<<<< HEAD
>>>>>>> 0c1869ee4ff1d2262e56ae736234d549360dffe3
=======
>>>>>>> 53b72995e81cf397b8c902e5d9fad434f2e099c9
end
