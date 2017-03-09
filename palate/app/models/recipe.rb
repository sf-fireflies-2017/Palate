class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :ratings
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def average_rating
     self.ratings.reduce(0) {|sum, rating| sum+ rating.value} / self.ratings.length
  end
end
