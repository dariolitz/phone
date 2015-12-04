class EmployeeMailer < ApplicationMailer
	  def welcome_email(employee)
    @employee = employee
    @url  = 'http://example.com/login'
    mail(to: @employee.email, subject: 'Welcome to My Awesome Site')
  end
end
