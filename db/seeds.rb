def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "Bastion", description: "AMAZING", completed_at: random_time, person_id: 1 },
  { name: "Mass Effect", description: "A scifi RPG-shooter series.", person_id: 27 },
  { name: "Monster Hunter 4 Ultimate", description: "You cannot complete this game....", completed_at: random_time, person_id: 1 },
  { name: "Don't Starve", description: "", person_id: 27 },
  { name: "Awesomenauts", description: "", completed_at: random_time, person_id: 1 },
  { name: "Portal 2", description: "", completed_at: random_time, person_id: 1 },
  { name: "Rogue Legacy", description: "", completed_at: random_time, person_id: 1 },
  { name: "Trine 2", description: "Very pretty multiplayer platform game. Started, did not finish.", person_id: 1 },
  { name: "Transistor", description: "", person_id: 1 },
  { name: "Dwarfs?!", description: "", completed_at: random_time, person_id: 1 }
]

tasks.each do |task|
  Task.create task
end

people = [
  { name: "Brandi" },
  { name: "Brittney" },
  { name: "Ashley" },
  { name: "Katie" },
  { name: "Corrine" },
  { name: "Sally" },
  { name: "Marleigh" },
  { name: "Carly" },
  { name: "Anita" },
  { name: "Kari L." },
  { name: "Lindsey" },
  { name: "Michelle" },
  { name: "Elsa" },
  { name: "Anita" },
  { name: "Wang" },
  { name: "Shanna" },
  { name: "Kyna" },
  { name: "Victoria" },
  { name: "Jeri" },
  { name: "Loraine" },
  { name: "Lila" },
  { name: "Alice" },
  { name: "Elia" },
  { name: "Brenna" },
  { name: "Kari B." },
  { name: "Jeremy" },
  { name: "Non-Ada Brandi's Friend Person"}
]

people.each do |person|
  Person.create person
end
