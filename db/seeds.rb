# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


15.times do
  Creature.create!(
    name: Faker::Pokemon.name,
    monster_type: ['aberration','beast','celestial','construct','dragon','elemental','fey','fiend','giant','humanoid','monstrosity','ooze','plant','undead'].sample(1),
    size: ['tiny', 'small','medium', 'large', 'huge','gargantuan'].sample(1),
    rating: 1 + rand(20)
    )
end