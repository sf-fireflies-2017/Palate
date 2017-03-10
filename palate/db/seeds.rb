User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Rating.destroy_all


users = [
	user1 = {first_name: "Kimberly", last_name: "Embry", username: "KE", email:"kimembry@mail.com", password_digest: "password"},
	user2 = {first_name: "Ethan", last_name: "Fertsch", username: "EF", email: "ethanfertsch@mail.com", password_digest: "password"},
	user3 = {first_name: "Zaw", last_name: "Lwin", username: "ZL", email:"zawlwin@mail.com", password_digest: "password"},
	user4 = {first_name: "Jack", last_name: "Howerton", username: "JH", email:"jackhowerton@mail.com", password_digest: "password"},
	user5 = {first_name: "Hussein", last_name: "Al-Sammaraie", username: "HAS", email:"husseinal-sammaraie@mail.com", password_digest: "password"}
]

users.each do |user|
	User.create(user)
end



	app1 = Recipe.create(name: "Paella", cuisine: "Spanish", course_type: "Appetizer", instructions: "Just prepare, cook, and enjoy!", time: "60 minutes", difficulty_level: 2 ,creator_id: 1)
	app2 = Recipe.create(name: "Meatballs", cuisine: "Italian", course_type: "Appetizer", instructions: "Just prepare, cook, and enjoy!", time: "60 minutes", difficulty_level: 3 ,creator_id: 2)
	app3 = Recipe.create(name: "Satay", cuisine: "Burmese", course_type: "Appetizer", instructions: "Just prepare, cook, and enjoy!", time: "60 minutes", difficulty_level: 5 ,creator_id: 3)
	app4 = Recipe.create(name: "Mini-Bahn Mi", cuisine: "Vietnamese", course_type: "Appetizer", instructions: "Just prepare, cook, and enjoy!", time: "60 minutes", difficulty_level: 4 ,creator_id: 4)
	app5 = Recipe.create(name: "Falafel", cuisine: "Middle Eastern", course_type: "Appetizer", instructions: "Just prepare, cook, and enjoy!", time: "60 minutes", difficulty_level: 1 ,creator_id: 5)

	salad1 = Recipe.create(name: "Chopped Thai Salad", cuisine: "Thai", course_type: "Salad", instructions: "Just prepare, toss, and enjoy!", time: "20 minutes", difficulty_level: 3 ,creator_id: 1)
	salad2 = Recipe.create(name: "Tea Leaf Salad", cuisine: "Burmese", course_type: "Salad", instructions: "Just prepare, toss, and enjoy!", time: "60 minutes", difficulty_level: 2 ,creator_id: 2)
	salad3 = Recipe.create(name: "Cobb Salad", cuisine: "American", course_type: "Salad", instructions: "Just prepare, toss, and enjoy!", time: "120 minutes", difficulty_level: 5 ,creator_id: 3)
	salad4 = Recipe.create(name: "African Salad", cuisine: "African", course_type: "Salad", instructions: "Just prepare, toss, and enjoy!", time: "10 minutes", difficulty_level: 1 ,creator_id: 4)


	entree1 = Recipe.create(name: "Hearty Beef Pho", cuisine: "Vietnamese", course_type: "Entree", instructions: "Just prepare, assemble, cook, and enjoy!", time: "120 minutes", difficulty_level: 4 ,creator_id: 2)
	entree2 = Recipe.create(name: "Squidink Pasta with Seafood Medley", cuisine: "Italian", course_type: "Entree", instructions: "Just prepare, assemble, cook, and enjoy!", time: "4 hours", difficulty_level: 4 ,creator_id: 3)
	entree3 = Recipe.create(name: "Braised Lamb Shanks with Broccolini", cuisine: "French", course_type: "Entree", instructions: "Just prepare, assemble, cook, and enjoy!", time: "1.5 hours", difficulty_level: 4 ,creator_id: 4)
	entree4 = Recipe.create(name: "Beef Stroganoff", cuisine: "Russian", course_type: "Entree", instructions: "Just prepare, assemble, cook, and enjoy!", time: "45 minutes", difficulty_level: 4 ,creator_id: 5)

	dessert1 = Recipe.create(name: "Alfajores", cuisine: "Mexican", course_type: "Dessert", instructions: "Just bake and enjoy", time: "60 minutes", difficulty_level: 3 ,creator_id: 3)
	dessert2 = Recipe.create(name: "Creme Brulee", cuisine: "French", course_type: "Dessert", instructions: "Just bake and enjoy", time: "3 hours", difficulty_level: 5 ,creator_id: 2)

 


ingredients = [

	#appetizer
	ingredient1 = {item: "shrimp", amount: "1" , metric: "pound", recipe_id: 1},
	ingredient2 = {item: "rice" , amount: "5" , metric: "cups" , recipe_id: 1},

	ingredient3 = {item: "ground beef", amount: "2", metric: "pounds", recipe_id: 2},
	ingredient4 = {item: "garlic", amount: "3", metric: "cloves", recipe_id: 2},

	ingredient5 = {item: "coconut", amount: "1/2", metric: "cup", recipe_id: 3},
	ingredient6 = {item: "pork", amount: "3" , metric: "pounds", recipe_id: 3},

	ingredient7 = {item: "rolls", amount: "6", metric: "each", recipe_id: 4},
	ingredient8 = {item: "grilled chicken" , amount: "1"  , metric: "pound", recipe_id: 4},

	ingredient9 = {item: "Garbanzo beans" , amount: "3" , metric: "cups" , recipe_id: 5},
	ingredient10 = {item: "Parsley", amount: "1" , metric: "bunch" , recipe_id: 5},

	#salad
	ingredient11 = {item: "Peanuts" , amount: "2" , metric: "cups" , recipe_id: 6},
	ingredient12 = {item: "Spring Mix", amount: "1/2" , metric: "pound" , recipe_id: 6},

	ingredient13 = {item: "Pickled tea leaves" , amount: "1/4" , metric: "cup" , recipe_id: 7},
	ingredient14 = {item:  "Crunchy Beans", amount: "2" , metric: "tablespoons" , recipe_id: 7},

	ingredient15 = {item: "Hard-boiled Egg", amount: "1", metric: "each" , recipe_id: 8},
	ingredient16 = {item: "Butter Lettuce" , amount: "1/2", metric: "head" , recipe_id: 8},

	ingredient17 = {item: "Cassava Tubers" , amount: "1/2" , metric: "pound" , recipe_id: 9},
	ingredient18 = {item: "Ugba" , amount: "3" , metric: "tablespoons" , recipe_id: 9},

	#entrees
	ingredient1 = {item: "Beef Broth" , amount: "6" , metric: "cups", recipe_id: 10},
	ingredient1 = {item: "Brisket" , amount: "1/4" , metric: "pound" , recipe_id: 10},

	ingredient1 = {item: "Squidink" , amount: "1" , metric: "teaspoon", recipe_id: 11},
	ingredient1 = {item: "Spaghetti", amount: "1/2" , metric: "cup", recipe_id: 11},

	ingredient1 = {item: "Lamb Shanks", amount: "2", metric: "each" , recipe_id: 12},
	ingredient1 = {item: "Broccolini" , amount: "1" , metric: "bunch", recipe_id: 12},

	ingredient1 = {item: "Minced Beef" , amount: "1/2" , metric: "cup" , recipe_id: 13},
	ingredient1 = {item: "Egg Noodles" , amount: "1" , metric: "package" , recipe_id: 13},

	#dessert
	ingredient1 = {item: "Dulce de Leche" , amount: "1/2", metric: "cup" , recipe_id: 14},
	ingredient1 = {item: "Flour" , amount: "3" , metric: "cups" , recipe_id: 14},

	ingredient1 = {item: "Cream" , amount: "1" , metric: "cup" , recipe_id: 15},
	ingredient1 = {item: "Eggs" , amount: "4" , metric: "each", recipe_id: 15}

]

ingredients.each do |ingredient|
	Ingredient.create(ingredient)
end

ratings = [

	rating1 = {value: 5, rater_id: 1, recipe_id: 1},
	rating2 = {value: 3, rater_id: 1, recipe_id: 6},
	rating3 = {value: 1, rater_id: 1, recipe_id: 10},

	rating4 = {value: 4, rater_id: 2, recipe_id: 2},
	rating5 = {value: 2, rater_id: 2, recipe_id: 7},
	rating6 = {value: 2, rater_id: 2, recipe_id: 11},

	rating8 = {value: 5, rater_id: 3, recipe_id: 3},
	rating9 = {value: 4, rater_id: 3, recipe_id: 8},
	rating10 = {value: 1, rater_id: 3, recipe_id: 12},
	rating11 = {value: 3, rater_id: 3, recipe_id: 14},

	rating12 = {value: 4, rater_id: 4, recipe_id: 5},
	rating13 = {value: 4, rater_id: 4, recipe_id: 9},

	rating14 = {value: 3, rater_id: 5, recipe_id: 15}

]

ratings.each do |rating|
	Rating.create(rating)
end

