require 'set'

class User
  attr_reader :name
  @@all =[]

  def initialize(name)
    @name = name
    # @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    recipe_cards.map do |rc|
      rc.recipe
    end
  end
  def recipe_cards
    RecipeCard.all.select do |rc|
      rc.user == self
    end

  end
  def declare_allergen(ingredient)
    Allergen.new(self,ingredient)
  end

  def allergens
    Allergen.all.select do  |a|
      a.user == self
    end
  end

  def add_recipe_card(recipe,date,rating)
    RecipeCard.new(self,recipe,date,rating)
  end

  def recipe_sorter
    recipe_cards.sort_by do |rc|
       - rc.rating
       # binding.pry
     end
     # binding.p
  end

  def top_three_recipes
    recipe_sorter[0..2]
  end

  def most_recent
    recipes[-1]
  end

  def ingredients
    recipes.map {|r| r.ingredients}.flatten
  end

  def allergens_ingredient_list
    Set.new(allergens.map {|ingredients| ingredients.ingredient})
  end

  def safe_recipes
    allergen_i_list = self.allergens_ingredient_list
    recipes.select do |r|
      # binding.pry
      not allergen_i_list.intersect?(r.ingredients.to_set)
      # binding.pry
    end
    # binding.pry
    # safeRec =[]
    # recipes.each do |r|
    #   allergens.each do |a|
    #     if r.ingredients.include?(a.ingredient)== false
    #       safeRec << r
    #     end
    #   end
    # end
    # safeRec
  end

end #end of class
