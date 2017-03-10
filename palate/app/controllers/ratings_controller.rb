class RatingsController < ActionController::Base
	def new
		@rating = Rating.new
		@recipe = Recipe.find(params[:id])
	end

	def create
		@rating = Rating.new(rating_params)
		@recipe = Recipe.find(params[:id])
		@recipe.ratings << @rating
		@rating.rater = current_user
	end

	private

	def rating_params
		params.require(:rating).permit(:value, :rater_id, :recipe_id)
	end

end