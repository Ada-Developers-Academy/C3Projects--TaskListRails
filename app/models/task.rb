class Task < ActiveRecord::Base
  belongs_to :person

  accepts_nested_attributes_for :person

  validates_presence_of :name, message: "name can't be blank"
end
