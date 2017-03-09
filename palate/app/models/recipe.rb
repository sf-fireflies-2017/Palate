class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :ratings
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
end
