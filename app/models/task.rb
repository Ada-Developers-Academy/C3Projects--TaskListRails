class Task < ActiveRecord::Base

  def self.all_completed
    where.not(completed_at: nil)
  end

  def self.destroy_one(id)
    find(id).destroy
  end

  def self.destroy_all_completed
    all_completed.destroy_all
  end

  def self.completed(id)
    find(id).update(completed_at: Time.now)
  end

  def self.not_completed(id)
    find(id).update(completed_at: nil)
  end

  def self.editing(id, task, completed)
    game = find(id)
    game.name = task[:name]
    game.description = task[:description]
    game.completed_at = completed
    game.save
  end

end
