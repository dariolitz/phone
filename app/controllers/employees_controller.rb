class EmployeesController < ApplicationController

	def index
		@q = Employee.search(params[:q])
		@employees = @q.result(distinct: true).page(params[:page]).per(15)
	end

	def new
		@employee = Employee.new
		@membership = Membership.new
	end

	def employee_params
		params.require(:employee).permit(:firstname, :name, :phone, :email, :location)
	end

	def create
		@employee = Employee.new(employee_params)
		if @employee.save
			EmployeeMailer.welcome_email(@employee).deliver_now # needs param
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

    respond_to do |format|
      format.html { redirect_to employees_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
		end
	end

end
