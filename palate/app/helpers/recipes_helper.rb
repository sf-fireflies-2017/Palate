module RecipesHelper
	def sort_recipes(recipes)
		recipes.sort_by {|recipe| recipe.name}
	end 
end
