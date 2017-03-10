class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :ratings
  has_many :ingredients

  def average_rating
    self.ratings.map{|rating| rating.value}.reduce(:+)/self.ratings.length
  end

end
