# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "The First Task", description: "The very first!", completed_at: random_time },
  { name: "Go to Brunch", description: "Pick somewhere fancy. You deserve it." },
  { name: "Go to Lunch", description: "Maybe go protein sandwich style. Brunch was fancy.", completed_at: random_time },
  { name: "Go to Second Lunch", description: "Deliciousness all over again!" },
  { name: "Play Video Games", description: "Even though board games are cooler.", completed_at: random_time },
  { name: "High Five Somebody You Don't Know", description: "It might be awkward!", completed_at: random_time },
  { name: "Plant Flowers", description: "Despite their inevitable death.", completed_at: random_time },
  { name: "Call Mom", description: "<3<3<3 She solves all your first-world problems." },
  { name: "She worries, you know.", description: "Send her a card. But don't neglect dad." },
  { name: "Nap.", description: "Forever.", completed_at: random_time },
]

tasks.each do |task|
  Task.create task
end
