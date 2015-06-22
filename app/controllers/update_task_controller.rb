class UpdateTaskController < ApplicationController
  def completed
    Task.update(params[:id], :completed_at => Time.new)

    redirect_to "/"
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task_params = create_params[:task]
    @task = Task.update(params[:id],
                        :name => task_params[:name],
                        :description => task_params[:description],
                        :completed_at => task_params[:completed_at],
                        :person_id => task_params[:person_id])
    redirect_to "/show/#{@task.id}"
  end

  private

  def create_params
    params.permit( task: [:name, :description, :completed_at, :person_id])
  end

end
