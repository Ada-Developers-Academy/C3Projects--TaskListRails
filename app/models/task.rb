class Task < ActiveRecord::Base

  def destroy_completed

  end

  def self.destroy_one(id)
    find(id).destroy
  end

end
