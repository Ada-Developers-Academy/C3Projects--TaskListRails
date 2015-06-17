class WelcomeController < ApplicationController
  def index
    @tasks = Task.all_tasks
  end
end
