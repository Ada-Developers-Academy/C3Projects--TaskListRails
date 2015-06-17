# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# tasks = [
#   { name: "take out the trash", description: "I think I saw flies" },
#   { name: "build a freeze ray", description: "to help take over the world" },
#   { name: "roast some yams", description: "for breakfast, lunch, dinner, snack, dessert, supper, midnight snack, fourth meal, etc" },
#   { name: "roast some more yams", description: "I don't think we roasted enough for all those meals yet" },
#   { name: "build a death ray", description: "also for world domination" },
#   { name: "try the treadmill desk", description: "it's pretty cool" },
#   { name: "run away Simba...", description: "run away, and never return." },
#   { name: "take over the world", description: "it needs your guidance" },
#   { name: "build entity relationship diagram that will explain memento", description: "trick question: memento cannot be explained"},
#   { name: "do your homework", description: "rails for zombies level 26" },
#   { name: "buckle your pants", description: "buckle buckle your pants" },
#   { name: "blahdeblahdeblahdeblade", description: "yabbadabbajoobiedoobie it's a secret" },
#   { name: "a wild TAKE OUT THE TRASH appeared", description: "TAKE OUT THE TRASH uses TONS OF FLIES. it's super effective." }
# ]
#
# # POKEMON FLAVOR TEXT MODE
#
# tasks.each do |task|
#   Task.create(task)
# end

def random_time
  Time.at(rand * Time.now.to_i)
end

moar_tasks = [
  { name: "The First Task", description: "", date_complete: random_time },
  { name: "Go to Brunch", description: "" },
  { name: "Go to Lunch", description: "", date_complete: random_time },
  { name: "Go to Second Lunch", description: "" },
  { name: "Play Video Games", description: "", date_complete: random_time },
  { name: "High Five Somebody You Don't Know", description: "", date_complete: random_time },
  { name: "Plant Flowers", description: "", date_complete: random_time },
  { name: "Call Mom", description: "" },
  { name: "She worries, you know.", description: "" },
  { name: "Nap.", description: "", date_complete: random_time }
]

moar_tasks.each do |task|
  Task.create task
end
