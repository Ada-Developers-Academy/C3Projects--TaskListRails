class TaskController < ApplicationController
  
  def index # GET tasks/ show me a list of all tasks
    @tasks = Task.all
    
  end

  def show #GET one task/ show me this one particluar task, by iD
    @task = Task.find(params[:id])

  end

  def new #GET new task/ 
    @task = Task.new
    @task = Task.new(create_params[:task])
  end


  def create #POST new task
    @task = Task.new(create_params[:task])
    @task.save

    redirect_to(root_url)
  end

  # def destroy #Delete a particular task
  #   @task = Task.find(params[:id])
  #   @task.destroy

  #   redirect_to(root_url)
  # end


  private


  def create_params                                
    params.require(:task).permit(:task_name, :task_description)
  end
end



  