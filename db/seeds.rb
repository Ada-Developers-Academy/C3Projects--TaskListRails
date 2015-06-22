require "time"

# This file contains all the record creation needed to seed the database with its default values.
# The data can be loaded with the rake db:seed (or created alongside the db with db:setup).

def random_time
  Time.at(rand * Time.now.to_i)
end

long_description = "here are a lot of words " * 200

tasks = [
  { name: "a wild TAKE OUT THE TRASH appeared", description: "TAKE OUT THE TRASH uses TONS OF FLIES. it's super effective." },
  { name: "buckle your pants", description: "buckle buckle your pants" },
  { name: "test a task with a really long description", description: long_description },
  { name: "blahdeblahdeblahdeblade", description: "yabbadabbajoobiedoobie it's a secret", date_complete: random_time },
  { name: "build a freeze ray", description: "to help take over the world" },
  { name: "roast some yams", description: "for breakfast, lunch, dinner, snack, dessert, supper, midnight snack, fourth meal, etc", date_complete: Date.parse("April 12, 2086") },
  { name: "roast some more yams", description: "I don't think we roasted enough for all those meals yet" },
  { name: "build a death ray", description: "also for world domination" },
  { name: "plant 'flowers'", date_complete: random_time },
  { name: "try the treadmill desk", description: "it's pretty cool" },
  { name: "take out the trash", description: "I think I saw flies", date_complete: Date.parse("July 31, 1964") },
  { name: "run away Simba...", description: "run away, and never return.", date_complete: Date.parse("November 04, 1992") },
  { name: "take over the world", description: "it needs your guidance" },
  { name: "build entity relationship diagram that will explain memento", description: "trick question: memento cannot be explained" },
  { name: "do your homework", description: "rails for zombies level 26", date_complete: random_time },
  { name: "eat breakfast", date_complete: random_time },
  { name: "invite people to brunch" },
  { name: "go to lunch", date_complete: Date.parse("February 7, 2034") },
  { name: "prepare elevenses", description: "You can never have too much lunch." },
  { name: "catch up on video games", description: "battleblock theater?", date_complete: random_time },
  { name: "high five", date_complete: random_time },
  { name: "figure out why Paul's head is floating" },
  { name: "is it insanity?" },
  { name: "it's not the same", date_complete: random_time }
]

tasks.each do |task|
  Task.create(task)
end


people = [
  { name: "Carl", summary: "Llama." },
  { name: "WhatsHisName", summary: "Who is that guy, anyway? I know I've seen him somewhere before." },
  { name: "Jeri", summary: "Human." }
]

people.each do |person|
  Person.create(person)
end

everyone = Person.all
all_tasks = Task.all

all_tasks.each do |task|
  task.person = everyone.sample
  task.save # thank you Alice! n_n
end
