class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper

  def sort_by_rating(recipes_array)
    unsorted_average_rating = {}
    recipes_array.map do |recipe|
       unsorted_average_rating[recipe.id] = [recipe.average_rating, recipe]
    end
    
    return sorted_recipe_id = unsorted_average_rating.sort_by{|k,v| v}.reverse   
    # { recipe_id: [average_rating , recipe_OBJ ] }
    #return the array of recipe ids. need to find the recipe with these id
  end
end
