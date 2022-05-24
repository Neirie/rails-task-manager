class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    #view the form
    @task = Task.new
  end

  def create
    #create a file + save
    # params = > hash
    @task = Task.new(task_params)
    @task.save
    # redirect to the show page
    redirect_to task_path(@task.id)
  end

  def edit
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task.id)
  end

  private

  # STRONG PARAMS
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
