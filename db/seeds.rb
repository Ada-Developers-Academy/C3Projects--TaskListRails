def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { task_name: "The First Task", description: "", date_completed: random_time },
  { task_name: "Go to Brunch", description: "" },
  { task_name: "Go to Lunch", description: "", date_completed: random_time },
  { task_name: "Go to Second Lunch", description: "" },
  { task_name: "Play Video Games", description: "", date_completed: random_time },
  { task_name: "High Five Somebody You Don't Know", description: "", date_completed: random_time },
  { task_name: "Plant Flowers", description: "", date_completed: random_time },
  { task_name: "Call Mom", description: "" },
  { task_name: "She worries, you know.", description: "" },
  { task_name: "Nap.", description: "", date_completed: random_time }
]

tasks.each do |task|
  Task.create task
end
