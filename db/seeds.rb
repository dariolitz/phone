# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create( name: 'Chicago' ,  name: 'Copenhagen' )
#   Mayor.create(name: 'Emanuel', city: cities.first)
department = Department.create(name: "IT")
department2 = Department.create(name: "Vertrieb")
employee = Employee.create(firstname: "hans", name: "peter", phone: "0123125215", email: "hans.peter@email.com", location: "germany")
employee2 = Employee.create(firstname: "christoph", name: "werner", phone: "012321214", email: "christoph.werner@email.com", location: "austria")
membership = Membership.create(employee_id: employee.id, department_id: department.id, role: "Head")
membership2 = Membership.create(employee_id: employee2.id, department_id: department2.id, role: "Apprentice")
membership3 = Membership.create(employee_id: employee.id, department_id: department2.id, role: "Head")