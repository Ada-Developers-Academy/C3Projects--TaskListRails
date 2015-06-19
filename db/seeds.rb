def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "The First Task", description: "Here it is", completed_date: random_time },
  { name: "Go to Brunch", description: "Brunch is great" },
  { name: "Go to Lunch", description: "Lunch is too", completed_date: random_time },
  { name: "Go to Second Lunch", description: "Duh" },
  { name: "Play Video Games", description: "esp NES games", completed_date: random_time },
  { name: "High Five Somebody You Don't Know", description: "Gotta make new friends!", completed_date: random_time },
  { name: "Plant Flowers", description: "I guess thats cool", completed_date: random_time },
  { name: "Call Mom", description: "Cause family" },
  { name: "She worries, you know.", description: "I would too" },
  { name: "Nap", description: "all day all night", completed_date: random_time },
]

tasks.each do |task|
  Task.create task
end
