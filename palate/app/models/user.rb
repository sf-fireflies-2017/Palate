class User < ApplicationRecord
	has_many :recipes, foreign_key: :creator_id
	has_many :ratings, foreign_key: :rater_id
	has_many :rated_recipes, through: :ratings, source: :rater

	validates :email, :username, uniqueness: true

	has_secure_password

	def full_name
		self.first_name.capitalize + " " + self.last_name.capitalize
	end

	def rated?(recipe)

		true if recipe.ratings.include?(self.id)
		# returns true if user is rated on the recipe
	end

	def created?(recipe)
		true if recipe.creator_id == self.id
		# returns true if user created the recipe
	end

	def course_type_created?(type)
		recipes_array = Recipe.all
		true if recipes_array.select!{|recipe| recipe.course_type == type && recipe.creator_id == self.id}
		# returns true if user created the recipe
	end

end
