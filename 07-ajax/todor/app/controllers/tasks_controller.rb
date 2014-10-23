class TasksController < ApplicationController
  def index
    @tasks = Task.all
    respond_to do |format|
      format.html {}
      format.json { render :json => @tasks}
    end
  end

  def show
    @task = Task.find params[:id]
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new task_params
    if @task.save
      redirect_to @task
    else
      render :new
    end
  end

  def edit
    @task = Task.find params[:id]
  end

  def update
    @task = Task.find params[:id]
    if @task.update task_params
      redirect_to @task
    else
      render :edit
    end
  end

  def complete
    task = Task.find params[:id]
    task.update :completed => true
    render :json => { :status => 'ok' }
  end

  def uncomplete
    task = Task.find params[:id]
    task.update :completed => false
    render :json => { :status => 'ok' }
  end

  def destroy
    task = Task.find params[:id]
    task.destroy
    respond_to do |format|
      format.html {redirect_to tasks_path }
      format.json { render :json => {:status => 'ok'} }
    redirect_to tasks_path
    end
  end

  private
  # Strong parameters
  def task_params
    params.require(:task).permit(:description, :completed)
  end
end
