class AddDifficultyToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :difficulty_level, :integer
  end
end
