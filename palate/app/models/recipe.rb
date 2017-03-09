class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :ratings
  has_many :ingredients

  def average_rating
    ratings_array = this.ratings
     ratings_array.reduce(0) {|sum, rating| sum+ rating.value} / ratings_array.length
  end

end
