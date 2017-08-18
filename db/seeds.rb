# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all


cocktails = Cocktail.create([{ name: 'Cuba Libre' }, { name: 'Daiquiri' }, { name: 'Pina Colada' }, { name: 'Mai Tai'}, { name: 'Mojito'}])
ingredients = Ingredient.create([{ name: 'Rum' }, { name: 'Vodka' }, { name: 'Tequila' }, { name: 'Coca Cola' }, { name: 'Lime Juice' }, { name: 'Water' }, { name: 'Orange Juice' }])




cocktails.each do |cocktail|

    3.times do
      dose = Dose.new(description: "#{rand(2..5)}cl")
      dose.cocktail = cocktail
      dose.ingredient = ingredients.sample
      dose.save
      dose.ingredient.save
    end

  cocktail.save
end

