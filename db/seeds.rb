# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


checklist = [{taskname: "Rails for zombies", description: "Finish level 1.", datecomp: "6/16"},
  {taskname: "Task project", description: "Submit pr", datecomp: "6/15"},
  {taskname: "Submit surveys", description: "Those two companies.", datecomp: "6/15"}]

checklist.each do |task|
  Task.create(task)
end
