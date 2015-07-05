class Person < ActiveRecord::Base
  has_many :tasks

  # def complete_tasks
  #   complete = tasks.map do |task|
  #     task if task.complete?
  #   end
  # end
  #
  # def incomplete_tasks
  #   incomplete = tasks.map do |task|
  #     task unless task.complete?
  #   end
  # end

  def complete_tasks_count
    complete_tasks = 0

    tasks.each do |task|
      complete_tasks += 1 if task.complete?
    end

    return complete_tasks
  end

  def incomplete_tasks_count
    incomplete_tasks = 0

    tasks.each do |task|
      incomplete_tasks += 1 unless task.complete?
    end

    return incomplete_tasks
  end

  def percent_complete
    decimal = complete_tasks_count.to_f / tasks.count
    percent = (decimal.round(2) * 100).to_i
  end

  def percent_incomplete
    decimal = incomplete_tasks_count.to_f / tasks.count
    percent = (decimal.round(2) * 100).to_i
  end
end
