class TaskController < ApplicationController
  def index
  	@title = "Task List"
  	@all_tasks = Task.all
  	@completed = false
  end
end
