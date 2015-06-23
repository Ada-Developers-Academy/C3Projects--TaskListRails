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
  { name: "Dwarfs?!", description: "", completed_at: random_time, person_id: 1 },
  { name: "Battleblock Theater", description: "Blage blahg ergj sdfglkjsdfg IT'S A SECRET", person_id: 13 }
]

tasks.each do |task|
  Task.create task
end

people = [
  { name: "Brandi" },
  { name: "Alice" },
  { name: "Amira" },
  { name: "Anita" },
  { name: "Ashley" },
  { name: "Brenna" },
  { name: "Brittney" },
  { name: "Carly" },
  { name: "Corrine" },
  { name: "Elia" },
  { name: "Elsa" },
  { name: "Jeremy" },
  { name: "Jeri" },
  { name: "Kari B." },
  { name: "Kari L." },
  { name: "Katie" },
  { name: "Kyna" },
  { name: "Lila" },
  { name: "Lindsey" },
  { name: "Loraine" },
  { name: "Marleigh" },
  { name: "Michelle" },
  { name: "Sally" },
  { name: "Shanna" },
  { name: "Victoria" },
  { name: "Wang" },
  { name: "Brandi's Non-Ada Friend Person"}
]

people.each do |person|
  Person.create person
end
