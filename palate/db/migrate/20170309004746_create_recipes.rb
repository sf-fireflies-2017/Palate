class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine
      t.string :course_type
      t.text :instructions
      t.time :time
      t.references :creator

      t.timestamps
    end
  end
end
