class Task < ActiveRecord::Base
  belongs_to :person

  scope :not_complete, -> { where(completed: "false").count }
end
