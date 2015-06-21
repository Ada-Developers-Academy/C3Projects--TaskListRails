class Task < ActiveRecord::Base

  def self.completed
    where.not(completed_at: nil)
  end

  def self.destroy_one(id)
    find(id).destroy
  end

  def self.destroy_all_completed
    completed.destroy_all
  end

  def self.completed(id)
    find(id).update(completed_at: Time.now)
  end

  def self.not_completed(id)
    find(id).update(completed_at: nil)
  end

end
