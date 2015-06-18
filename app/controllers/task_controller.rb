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

end
