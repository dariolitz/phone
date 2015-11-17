class Membership < ActiveRecord::Base
	has_one :employee
	has_one :department
end
