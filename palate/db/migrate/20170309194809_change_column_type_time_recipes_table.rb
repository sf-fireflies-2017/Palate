class ChangeColumnTypeTimeRecipesTable < ActiveRecord::Migration[5.0]
  def change
    change_column :recipes , :time , :string
  end
end
