class EmployeeMailer < ApplicationMailer
  def welcome_email(employee)
  	@employee = employee
    mail(to: @employee.email, subject: 'Welcome to My Awesome Site', message: "Your name: #{@employee.firstname} #{@employee.name}")
  end
end
