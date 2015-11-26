class MembershipsController < ApplicationController
  def new
  	@membership = Membership.new
  	@employees = Employee.all
  	@departments = Department.all
  end

	def membership_params
		params.require(:membership).permit(:department_id, :employee_id, :role)
	end

	def create
		@membership = Membership.new(membership_params)
		if @membership.save
			redirect_to departments_path
		else
			render "new"
		end
	end

end
