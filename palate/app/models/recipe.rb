class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :ratings
  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients, :allow_destroy => true

  def average_rating
    ratings = self.ratings.to_a
    if ratings.length > 0
      value = 0
      ratings.each do |rating|
        value +=  rating.value
      end
      return value / ratings.length
    else
      return 0
    end
  end

  def self.sort_by_rating_type (args) # will receive course_type in string   "all" if you neglect the course_type

    recipes_array = args[:array]
    type = args[:type]
    if recipes_array.length> 0
      if type == "all"
        recipes_array.sort_by {|x| x.average_rating}
      else
      return recipes_array.sort_by {|x| x.average_rating }.select!{|x| x.course_type == type}
      end
    else
      return []
    end
    ####return the whole list of recipe, need to limit the number  or randomize as necessary
  end

  def self.search_method (args) # will receive the hash  {search_args:"something" , type:"ingredients" }
    recipes_array = args[:array]
    type = args[:type]
    search = args[:search_args]

    if type == "name"
      return recipes_array.sort_by {|x| x.average_rating}.select!{|x| x.name.include? search }
    elsif type == "ingredients"
      return   recipes_array.sort_by {|x| x.average_rating}.select! {|x| x.has_ingredients?(search)}
    elsif type == "description"
      return recipes_array.sort_by {|x| x.average_rating}.select!{|x| x.description.include? search }
    end
    ########### return the whole list of recipe
  end

  def has_ingredients? (ingredient)
    self.ingredients.each do |i|
      if i.item == ingredient
        true
      end
    end
    false
  end

end
