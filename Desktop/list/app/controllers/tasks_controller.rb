class TasksController < ApplicationController
 
  def index
    @tasks=Task.all
    render :partial => 'index'
  end

  def new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      render json: {:success =>  true, :task => @task}
    else
      render json: {:success => false}
    end
  end

  def update
  end

  def archive
    @task= Task.find(params[:id])
    @task.archived=1
    if @task.save
      render json: {:success => true, :task=> @task}
    else
      render json: {:success => false}
    end
  end

  def show
  end

  def destroy
  end

  private
  def task_params
    params.require(:task).permit(:title, :description, :email_address, :archived, :priority)
  end
end
