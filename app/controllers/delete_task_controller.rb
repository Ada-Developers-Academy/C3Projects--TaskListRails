class DeleteTaskController < ApplicationController
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to '/'
  end
end
