# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tasks = [
  {name: "Bobbi", description: "Laundry", date: "06/17/2015", completed: "Yes"},
  {name: "Tami", description: "Dishes", completed: "No"},
  {name: "Joaquin", description: "Dusting", completed: "No"},
  {name: "Phoenix", description: "Polishing", date: "01/01/2015", completed: "Yes"},
  {name: "Xavier", description: "Groceries", completed: "No"},
]

tasks.each do |task|
  Task.create(task)
end
