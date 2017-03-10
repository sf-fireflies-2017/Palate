class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def index
    @top_four = [Recipe.sort_by_rating_type("Appetizer")[0...4] ,Recipe.sort_by_rating_type("Salad")[0...4] ,Recipe.sort_by_rating_type("Entree")[0...4] ,Recipe.sort_by_rating_type("Dessert")[0...4] ]

  end

end
