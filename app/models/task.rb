class Task < ActiveRecord::Base
  belongs_to :person

  validates :taskname, presence: true
end
