# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create( name: 'Chicago' ,  name: 'Copenhagen' )
#   Mayor.create(name: 'Emanuel', city: cities.first)
department = Department.create(name: "IT")
department2 = Department.create(name: "Marketing")
employee = Employee.create(firstname: "Hans", name: "Peter", phone: "0123125215", email: "hans.peter@email.com", location: "Germany")
employee2 = Employee.create(firstname: "Christoph", name: "Werner", phone: "012321214", email: "christoph.werner@email.com", location: "Austria")
Membership.create(employee_id: employee.id, department_id: department.id, role: "head")
Membership.create(employee_id: employee2.id, department_id: department2.id, role: "apprentice")
Membership.create(employee_id: employee.id, department_id: department2.id, role: "head")
Membership.create(employee_id: 7, department_id: 2, role: "head")
300.times do
  employee = Employee.new
  first_name = Faker::Name.first_name
  employee.firstname = first_name
  last_name = Faker::Name.name
  employee.name = last_name
  employee.phone = Faker::PhoneNumber.phone_number
  employee.email = Faker::Internet.email([first_name, last_name].join("_"))
  employee.location = Faker::Address.country
  employee.save!
end

Employee.all.each do |employee|
  Membership.create(employee_id: employee.id, department_id: Random.new.rand(1..Department.count), role: Faker::Company.profession) if employee.memberships.length <= 3
end
