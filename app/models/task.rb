class Task < ActiveRecord::Base

  def self.get_all_records
    Task.all
  end

end
