module ApplicationHelper

<<<<<<< HEAD
  def sort_by_rating(recipes_array)
    unsorted_average_rating = {}
    recipes_array.each do |recipe|
      temp_votable[votable.id] = average_rating(recipe.ratings)
    end
    sorted_recipe_id = unsorted_average_rating.sort_by{|k,v| v}.reverse
    return sorted_recipe_id

    #return the array of recipe ids. need to find the recipe with these id  
  end
=======




>>>>>>> d544de2bb27c5fa47e667d3b7519d7c6fa8579ea
end
