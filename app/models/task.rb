class Task < ActiveRecord::Base
  validates_presence_of :name
  # Can also be written as (if length 3 - 140 desired)
  # validates :name, 
              # presence: true,
              # length: { minimum: 3, maximum: 140 }
  belongs_to :person
end
