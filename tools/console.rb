require_relative '../config/environment.rb'

r1 = Recipe.new('Chicken Soup')
r2 = Recipe.new('Stir Fry')
r3 = Recipe.new('salad ')
r4 = Recipe.new('steak')
r5 = Recipe.new('salsa Soup')
r6 = Recipe.new('eggs Soup')

u1 = User.new("Brian")
u2 = User.new('Clarence')
u3 = User.new('Bob')

i1 = Ingredient.new('Chicken')
i2 = Ingredient.new('Soup')
i3 = Ingredient.new('Meat')

rc1 = RecipeCard.new(u1,r1,'today',5)
rc2 = RecipeCard.new(u1,r2,'yesterday',8)
rc3 = RecipeCard.new(u1,r3,'today',3)
rc4 = RecipeCard.new(u1,r4,'today',9)
rc5 = RecipeCard.new(u1,r6,'today',2)
rc6 = RecipeCard.new(u1,r5,'today',4)
rc7 = RecipeCard.new(u2,r1,'today',5)
rc8 = RecipeCard.new(u2,r2,'yesterday',8)
rc9 = RecipeCard.new(u2,r3,'today',3)
rc10 = RecipeCard.new(u2,r4,'today',9)
rc11 = RecipeCard.new(u2,r6,'today',2)
rc12 = RecipeCard.new(u2,r5,'today',4)

ri1 = RecipeIngredient.new(i1,r1)
ri2 = RecipeIngredient.new(i2,r1)
ri3 = RecipeIngredient.new(i2,r6)
ri4 = RecipeIngredient.new(i2,r5)
ri5 = RecipeIngredient.new(i3,r4)

a = Allergen.new(u1,i2)
a4 = Allergen.new(u1,i3)
a2= Allergen.new(u2,i2)
a3= Allergen.new(u3,i1)

binding.pry
puts 's'
