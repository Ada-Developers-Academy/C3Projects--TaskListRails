class TasksController < ActionController::Base
  def index
    @completed = ""
    @all_records = Task.get_all_records
    render :home
  end

end
