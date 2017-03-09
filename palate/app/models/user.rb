class User < ApplicationRecord
	has_many :recipes, foreign_key: :creator_id
	has_many :ratings, foreign_key: :rater_id
	has_many :rated_recipes, through: :ratings, source: :rater 

	validates :email, :username, uniqueness: true 

	has_secure_password

	def full_name
		self.first_name.capitalize + " " + self.last_name.capitalize
	end

end