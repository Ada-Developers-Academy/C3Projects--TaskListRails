class TaskController < ApplicationController

	def index
		@tasks = Task.all
		render :index
	end

	def show
		@selected_id = params[:selected_id]
		@selected_task = Task.find_by(id: "#{@selected_id}")
		render :show
	end

	def new
		@task = Task.new
		render :new
	end

	def create
		@task = Task.new(create_params[:task])
		@task.save

		redirect_to action: "index"
	end

  def delete
  	@delete_task = Task.find(params[:id])
  	@delete_task.destroy.save

  	redirect_to action: "index"
  end

  def edit
  	@edit_id = params[:edit_id]
  	@edit_task = Task.find_by(id: "#{@edit_id}") 
  	render :edit
  end

  def make_update
  	@edit_id = params[:edit_id]
  	@edit_task = Task.find_by(id: "#{@edit_id}")
  	@edit_task.update(create_params[:task])

  	redirect_to action: "index"
  end

  def mark_complete
  	@id = params[:id]
  	@task = Task.find(@id)
  	@task.completed_at = DateTime.now
  	@task.save

  	redirect_to action: "index"
  end

  def mark_incomplete
  	@id = params[:id]
  	@task = Task.find(@id)
  	@task.completed_at = nil
  	@task.save

  	redirect_to action: "index"

  end

################### PRIVATE METHODS ###################

	private

  def create_params
    params.permit(task: [:name, :description, :completed_at, :person_id])
  end

end
