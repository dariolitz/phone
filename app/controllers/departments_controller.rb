class DepartmentsController < ApplicationController
	def index
		@departments = Department.all
	end

	def new
	end

	def edit
	end

	def show
	 	@department = Department.find(params[:id])
	end

end
