# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


checklist = [
  {taskname: "Bluets", description: "Maggie Nelson", datecomp: "7/17", comp_status: "read"},
  {taskname: "The Stars My Destination", description: "Alfred Bester", datecomp: "3/07", comp_status: "read"},
  {taskname: "Speaks the Nightbird", description: "Robert McCammon", datecomp: "1/28", comp_status: "read"}]

checklist.each do |task|
  Task.create(task)
end
