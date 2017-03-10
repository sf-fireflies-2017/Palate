module ApplicationHelper


  def sort_by_rating(recipes_array)
    unsorted_average_rating = {}
    recipes_array.each do |recipe|
      temp_votable[votable.id] = average_rating(recipe.ratings)
    end
    sorted_recipe_id = unsorted_average_rating.sort_by{|k,v| v}.reverse
    return sorted_recipe_id

    #return the array of recipe ids. need to find the recipe with these id
  end

end
