class Task < ActiveRecord::Base
  validates_presence_of :name, message: "name can't be blank"
end
