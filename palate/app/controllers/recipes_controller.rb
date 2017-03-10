class RecipesController < ApplicationController
  def index
    @recipes =  Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @creator = @recipe.creator.first_name
    @ingredients = @recipe.ingredients
  end

  def new
    @recipe = Recipe.new
    @types = ["Appetizer", "Salad", "Entree", "Dessert"]

    10.times {@recipe.ingredients.build}
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      @errors = @recipe.errors.full_messages
      render "new"
    end
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      @errors = @recipe.errors.full_messages
      render "edit"
    end
  end

  private
    def recipe_params
      params.require(:recipe).permit(:name, :course_type, :item, :amount, :instructions, :ingredients)
    end
end
