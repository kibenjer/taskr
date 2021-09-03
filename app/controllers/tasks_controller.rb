class TasksController < ApplicationController
	def new
		@task = Task.new
	end

	def create
		@task = Task.new(tasks_params)
		@task.save

		redirect_to task_path(@task)
	end

	private

	def tasks_params
		params.require(:task).permit(:content)
	end

end