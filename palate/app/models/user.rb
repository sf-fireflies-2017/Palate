class User < ApplicationRecord
	has_many :recipes, foreign_key: :creator_id
	has_many :ratings, foreign_key: :rater_id
	has_many :rated_recipes, through: :ratings 

	validates :email, :username, uniqueness: true 
end
