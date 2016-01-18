class EmployeeMailer < ApplicationMailer
  def welcome_email(employee)
  	@employee = employee
    mail(to: "d.litz@lifecodexx.com", subject: 'Welcome to My Awesome Site')
  end
end
