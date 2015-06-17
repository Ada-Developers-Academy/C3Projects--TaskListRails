class CarlTasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def about
  end
  #
  # def complete
  # end
  #
  # def create
  # end
  #
  # def update
  #
  #   render :create
  # end
  #
  # def delete
  # end
end
