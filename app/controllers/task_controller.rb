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

	private

  def create_params
    params.permit(task: [:name, :description, :completed_at])
  end

end
