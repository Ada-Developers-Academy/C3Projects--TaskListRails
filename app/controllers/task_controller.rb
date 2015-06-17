class TaskController < ApplicationController
  def index
    @displaytasks = Task.all
    render :index # This isn't necessary since it's implicit. However
    # we should prefer clarity.
  end
end
