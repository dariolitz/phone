class EmployeesController < ApplicationController
	def index
		@q = Employee.ransack(params[:q])
  	@employees = @q.result(distinct: true).page(params[:page]).per(15)
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
	  respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@user).deliver_later
 
        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
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
