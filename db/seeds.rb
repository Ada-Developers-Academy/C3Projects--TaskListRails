def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  {name: "The First Task", description: "", date_completed: random_time},
  {name: "Go to Brunch", description: ""},
  {name: "Go to Lunch", description: "", date_completed: random_time},
  {name: "Go to Second Lunch", description: ""},
  {name: "Play Video Games", description: "", date_completed: random_time},
  {name: "High Five Somebody You Don't Know", description: "", date_completed: random_time},
  {name: "Plant Flowers", description: "", date_completed: random_time},
  {name: "Call Mom", description: ""},
  {name: "She worries, you know.", description: ""},
  {name: "Nap.", description: "", date_completed: random_time}
]

tasks.each do |task|
  Task.create task
end
