class Rating < ApplicationRecord
  belongs_to :rater, class_name: "User"
  belongs_to :recipe, required: false
end
