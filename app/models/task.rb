class Task < ActiveRecord::Base

  def completed
    self.read_attribute("completed") == "t"
  end
end
