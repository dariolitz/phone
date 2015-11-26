# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create( name: 'Chicago' ,  name: 'Copenhagen' )
#   Mayor.create(name: 'Emanuel', city: cities.first)
department = Department.create(name: "IT")
department2 = Department.create(name: "Vertrieb")
employee = Employee.create(firstname: "Hans", name: "Peter", phone: "0123125215", email: "hans.peter@email.com", location: "Germany")
employee2 = Employee.create(firstname: "Christoph", name: "Werner", phone: "012321214", email: "christoph.werner@email.com", location: "Austria")
membership = Membership.create(employee_id: employee.id, department_id: department.id, role: "Head")
membership2 = Membership.create(employee_id: employee2.id, department_id: department2.id, role: "Apprentice")
membership3 = Membership.create(employee_id: employee.id, department_id: department2.id, role: "Head")
Employee.populate(300) do |employee|
	first_name = Faker::Name.first_name
  employee.firstname = first_name
  employee.name = Faker::Name.last_name
  employee.phone = Faker::PhoneNumber.phone_number
  employee.email = Faker::Internet.email(first_name)
  employee.location = Faker::Address.country
end