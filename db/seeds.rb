# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 5.times do |i|
#   Product.create(name: "Product ##{i}", description: "A product.")
# end

new_tasks = [
	{ name: "take out the trash", description: "pickup on Thursday" },
	{ name: "grocery shopping", description: "regular run" },
	{ name: "clean the bathroom", description: "sink, tub, toilet, floor" },
	{ name: "yard work", description: "pull weeds, mow lawn" },
	{ name: "process mail", description: "shred, recycle, pay bills" },
	{ name: "meal planning", description: "breakfast, lunch, dinner, snacks" },
	{ name: "workout", description: "find squat workout plan" }
]

new_tasks.each do |task|
	Task.create(task)
end