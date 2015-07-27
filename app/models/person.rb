class Person < ActiveRecord::Base
  has_many :tasks
  
  def self.all_people
    Person.all
  end
end
