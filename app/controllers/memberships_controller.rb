class MembershipsController < ApplicationController

	def index
		@memberships = Membership.all
	end

  def new
  	@membership = Membership.new
  	@employees = Employee.all
  	@departments = Department.all
  end

	def membership_params
		params.require(:membership).permit(:department_id, :employee_id, :role)
	end

	def edit
		@membership = Membership.find(params[:id])
	end


	def create
		@membership = Membership.new(membership_params)
		if @membership.save
			redirect_to departments_path
		else
			render "new"
		end
	end

	def destroy
		@membership = Membership.find(params[:id])
		@membership.destroy
		redirect_to memberships_url
	end

end
