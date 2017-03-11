class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def index
    recipe_array = Recipe.all.to_a

    @top_four = [Recipe.sort_by_rating_type( array: recipe_array , type: "Appetizer" )[0...4] ,
                  Recipe.sort_by_rating_type( array: recipe_array, type:"Salad")[0...4] ,
                  Recipe.sort_by_rating_type(array: recipe_array, type:"Entree")[0...4] ,
                  Recipe.sort_by_rating_type(array: recipe_array, type:"Dessert")[0...4] ]

    render '/index.html'
  end

end
