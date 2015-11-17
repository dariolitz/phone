class EmployeesController < ApplicationController
	def index
		@q = Employee.ransack(params[:q])
  	@employees = @q.result(distrinct: true)
	end

	def new
	end

	def edit
	end

	def show
		@employee = Employee.find(params[:id])
	end

end
