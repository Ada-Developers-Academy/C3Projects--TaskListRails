require "time"

class CarlTasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def task
    if params[:id]
      @task = Task.find(params[:id])
    else
      redirect_to "/"
    end
  end

  def about
  end

  def complete
    if params[:id]
      @task = Task.find(params[:id])
    else
      @tasks = Task.all
    end
  end

  def create
    if params[:id]
      @task = Task.find(params[:id])
    else
      @tasks = Task.all
    end

    @tasky = Task.new
  end


  # # code ripped from jnf's live code example:
  # def new
  #   @proposal = Proposal.new
  # end
  #
  # def create
  #   @proposal = Proposal.new(create_params[:proposal])
  #   @proposal.save
  #
  #   render :thank_you
  # end
  #
  # private
  #
  # def create_params
  #   params.permit(proposal: [:title, :abstract])
  # end

  def created
    task = task_params[:task]
    name, description = task[:name], task[:description]

    date = date_params[:start_date]
    date_complete = (task[:complete] == "1") ? Date.parse("#{ date[:year] }/#{ date[:month] }/#{ date[:day] }") : ""

    if task[:id]
      id = task[:id]

      Task.find(id).update(name: name, description: description, date_complete: date_complete)

    else
      task.except!(:complete)

      if date_complete != ""
        task[:date_complete] = date_complete
      end

      Task.create(task)

      id = Task.last.id
    end

    redirect_to "/task/#{ id }"
  end

  def update
    if params[:id]
      @task = Task.find(params[:id])
    else
      @tasks = Task.all
    end

    render :create
  end

  def delete
    if params[:id]
      @task = Task.find(params[:id])
    else
      @tasks = Task.all
    end
  end

  private

  def task_params
    # from params hash TAKE 1 COMPLETE TRUE TODAY
    # {"task"=>{"name"=>"take out the trash", "description"=>"I think I saw flies"},
    # "complete"=>{"complete"=>"1"}, "start_date"=>{"year"=>"2015", "month"=>"6", "day"=>"18"}}

    # from params hash TAKE 2 COMPLETE TRUE FUTURE
    # {"task"=>{"name"=>"roast some yams", "description"=>"for breakfast, lunch, dinner, snack, dessert, supper, midnight snack, fourth meal, etc"}
    # "complete"=>{"complete"=>"1"}, "start_date"=>{"year"=>"2086", "month"=>"4", "day"=>"12"}}

    # from params hash TAKE 3 COMPLETE FALSE
    # "complete"=>{"complete"=>"0"} FALSE VALUE

    # from params hash TAKE 4 can has ID NOW
    # "task"=>{"id"=>"2", "name"=>"take out the trash", "description"=>"I think I saw flies"},

    params.permit(task: [:id, :name, :description, :complete])
  end

  def date_params
    params.permit(start_date: [:year, :month, :day])
  end
end
