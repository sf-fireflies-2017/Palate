User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Rating.destroy_all


User.create(first_name: "Kim", last_name: "Embry", username: "princess", email:"mistresskim@mail.com", password_digest: "boys")
5.times do
  Recipe.create(name: "Beef balls", cuisine: "Spanish", course_type: "appetizer", instructions: "Don't try this at home", time: Time.now,difficulty_level: 2 ,creator_id: 1)
end
Ingredient.create(item: "Beef", amount: "5", metric: "balls", recipe_id: 1)
Rating.create(value: 5, rater_id: 1, recipe_id: 1)


