def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "Kill Harry", description: "Life mission.", completed_at: random_time, person_id: 1 },
  { name: "Read about the history of Hogwarts", description: "A history of Hogwarts", person_id: 2 },
  { name: "Go to Lunch", description: "Yummy", completed_at: random_time, person_id: 3 },
  { name: "Go to Second Lunch", description: "Heck yeah!", person_id: 3 },
  { name: "Destroy basalisk", description: "Don't get petrified", completed_at: random_time, person_id: 2 },
  { name: "High Five Somebody You Don't Know", description: "Psh, ya.", completed_at: random_time, person_id: 4 },
  { name: "Plant Flowers", description: "Mom would be happy.", completed_at: random_time, person_id: 1 },
  { name: "Call Gran", description: "Gran would be really happy!", person_id: 5 },
  { name: "Nap.", description: ":)", completed_at: random_time, person_id: 3 }
]

tasks.each do |task|
  Task.create task
end

people = [
  { name: "Voldemort"},
  { name: "Hermione"},
  { name: "Mrs. Norris"},
  { name: "Ron"},
  { name: "Neville"}
]

people.each do |person|
  Person.create person
end
