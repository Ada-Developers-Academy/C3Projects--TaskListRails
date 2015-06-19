def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "The First Task", description: "This is my first task.", completed_at: random_time },
  { name: "Go to Brunch", description: "Yummy" },
  { name: "Go to Lunch", description: "More Yummy", completed_at: random_time },
  { name: "Go to Second Lunch", description: "Heck yeah!" },
  { name: "Play Video Games", description: "Not for long.", completed_at: random_time },
  { name: "High Five Somebody You Don't Know", description: "Psh, ya.", completed_at: random_time },
  { name: "Plant Flowers", description: "Mom would be happy.", completed_at: random_time },
  { name: "Call Mom", description: "Mom would be really happy!" },
  { name: "She worries, you know.", description: "Never." },
  { name: "Nap.", description: ":)", completed_at: random_time }
]

tasks.each do |task|
  Task.create task
end
