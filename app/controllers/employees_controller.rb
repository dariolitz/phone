class EmployeesController < ApplicationController
  def index
  	@employees = Employee.all
  end

  def new
  end

  def edit
  end
end
