class EmployeesController < ApplicationController
	def index
		@q = Employee.ransack(params[:q])
  	@employees = @q.result(distrinct: true)
	end

	def new
		@employee = Employee.new
	end

	def employee_params
		params.require(:employee).permit(:firstname, :name, :phone, :email, :location)
	end

	def create
		@employee = Employee.new(employee_params)
		if @employee.save
			redirect_to employees_path
		else
			render "new"
		end
	end

	def edit
		@employee = Employee.find(params[:id])
	end
	
	def show
		@employee = Employee.find(params[:id])
	end

	def update
		@employee = Employee.find(params[:id])
		if @employee.update_attributes(employee_params)
			redirect_to employees_path
		else
			render "edit"
		end
	end

	def destroy
		@employee = Employee.find(params[:id])
		@employee.destroy
		redirect_to employees_url
	end
	
end
