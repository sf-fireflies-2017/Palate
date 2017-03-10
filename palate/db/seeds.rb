<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 0c1869ee4ff1d2262e56ae736234d549360dffe3
=======
>>>>>>> 53b72995e81cf397b8c902e5d9fad434f2e099c9
User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Rating.destroy_all

User.create(first_name: "Kim", last_name: "Embry", username: "princess", email:"mistresskim@mail.com", password_digest: "boys")
5.times do
  Recipe.create(name: "Beef balls", cuisine: "Spanish", course_type: "appetizer", instructions: "Don't try this at home", time: "60 minutes", difficulty_level: 2 ,creator_id: 1)
end
Ingredient.create(item: "Beef", amount: "5", metric: "balls", recipe_id: 1)
Rating.create(value: 5, rater_id: 1, recipe_id: 1)
<<<<<<< HEAD
<<<<<<< HEAD


=======
>>>>>>> 0f806e68899de19a9a5bed25f4c758b14ee7d0b0
=======
>>>>>>> 0c1869ee4ff1d2262e56ae736234d549360dffe3
=======
>>>>>>> 53b72995e81cf397b8c902e5d9fad434f2e099c9
