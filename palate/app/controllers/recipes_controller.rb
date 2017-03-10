class RecipesController < ApplicationController
  def index
    @recipes =  Recipe.all
  end

  def query
    if params[:type]
      @recipes = Recipe.where("course_type = #{params:type}")
    else
      @recipes = Recipe.all
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @creator = @recipe.creator.first_name
    @ingredients = @recipe.ingredients
  end

  def new
    @recipe = Recipe.new
    1.times {@recipe.ingredients.build}
    @types = ["Appetizer", "Salad", "Entree", "Dessert"]
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @types = ["Appetizer", "Salad", "Entree", "Dessert"]
  end

  def create
    @recipe = Recipe.new(recipe_params)
    p recipe_params
    p params
    p "*" * 100
    @recipe.creator = current_user

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

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to user_path(current_user)
  end

  private
    def recipe_params
      params.require(:recipe).permit(:name, :cuisine, :course_type, :time, :difficulty_level, :instructions, ingredients_attributes: [:item, :amount, :metric, :id, :recipe_id, '_destroy'])
    end
end
