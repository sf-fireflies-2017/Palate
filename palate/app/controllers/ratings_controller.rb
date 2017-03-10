
class RatingsController < ApplicationController
	def new
		@rating = Rating.new
		@recipe = Recipe.find(params[:id])
	end

	def create
		@recipe = Recipe.find(params[:recipe_id])
		@rating = Rating.new(rating_params)
		@recipe.ratings << @rating
		@rating.rater = current_user
		if @rating.save
			redirect_to @recipe
		else
			render 'recipes/show'
		end

	end

	def destroy
	    @rating = Rating.find(params[:id])
	    @recipe = Recipe.find(@rating.recipe)
	    @rating.destroy
	    redirect_to @recipe
	end

	private

	def rating_params
		params.require(:rating).permit(:value, :rater_id, :recipe_id)
	end

end