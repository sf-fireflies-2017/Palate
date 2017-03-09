# User.destroy_all
# Recipe.destroy_all
# Ingredient.destroy_all
# Rating.destroy_all

50.times do

User.create(
first_name: Faker::Name.first_name  ,
last_name: Faker::Name.last_name,
username: Faker::Internet.user_name,
email: Faker::Internet.email,
password_digest: "123"
)

end

50.times do

Recipe.create(
name: Faker::Pokemon.name,
cuisine: "#{Faker::Demographic.demonym} cousine",
course_type: "appetizer",
instructions: "Don't try this at home",
difficulty_level: rand(1...5),
time: Time.now,
creator_id: rand(0...50))

end

100.times do

Rating.create(
value: rand(1...5),
rater_id: rand(0...50),
recipe_id: rand(0...50))

end

50.times do

Ingredient.create(
item: Faker::Food.ingredient,
amount: rand(1..10),
metric: Faker::Food.measurement,
recipe_id: 1)

end
