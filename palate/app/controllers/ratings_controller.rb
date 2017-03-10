class RatingsController < ActionController::Base
	def new
		@rating = Rating.new
	end

	def create
		@rating = Rating.new(rating_params)
		@rating.recipe = Recipe.find(params[:id])
		@rating.rater = current_user
	end

	private

	def rating_params
		params.require(:rating).permit(:value)
	end

end