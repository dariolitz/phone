class Employee < ActiveRecord::Base
	has_many :memberships
	phony_normalize :phone, :default_country_code => 'DE'
end