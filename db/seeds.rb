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
  { name: "The First Task", description: "it is the first task", completed_at: random_time, completion_status: "done!" },
  { name: "Go to Brunch", description: "mimosas and beignets", completion_status: "not done" },
  { name: "Go to Lunch", description: "yummy", completed_at: random_time, completion_status: "done!" },
  { name: "Go to Second Lunch", description: "because food", completion_status: "not done" },
  { name: "Play Video Games", description: "all of them", completed_at: random_time, completion_status: "done!" },
  { name: "High Five Somebody You Don't Know", description: "", completed_at: random_time, completion_status: "done!" },
  { name: "Plant Flowers", description: "sunflowers and daffodils", completed_at: random_time, completion_status: "done!" },
  { name: "Call Mom", description: "at your sister's", completion_status: "not done" },
  { name: "She worries, you know.", description: "always", completion_status: "not done" },
  { name: "Nap.", description: "sweet dreams!", completed_at: random_time, completion_status: "done!" }
]

tasks.each do |task|
  Task.create task
end
