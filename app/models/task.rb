class Task < ActiveRecord::Base
  belongs_to :person

  def completed
    self.read_attribute("completed") == "t"
  end
end
