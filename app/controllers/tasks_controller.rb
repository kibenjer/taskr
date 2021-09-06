class TasksController < ApplicationController
	before_action :authenticate_user!
	before_action :set_task, only:[:edit, :update, :show, :destroy]

	def index
		@tasks = current_user.tasks
	end

	def new
		@task = Task.new
	end

	def edit

	end

	def create
		@task = current_user.tasks.new(tasks_params)
		if @task.save
			flash[:notice] = "Task was successfully created"
			redirect_to task_path(@task)
		else
			render 'new'
		end
	end

	def update

		if @task.update(tasks_params)
			flash[:notice] = "Task was successfully updated"
			redirect_to task_path(@task)
		else
			render 'edit'
		end
	end

	def show

	end

	def destroy
		@task.destroy
		flash[:notice] = "Task was successfully destroied"
		redirect_to tasks_path
	end

	private

	def set_task
		@task = Task.find(params[:id])
	end

	def tasks_params
		params.require(:task).permit(:content)
	end

end