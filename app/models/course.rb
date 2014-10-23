class Course < ActiveRecord::Base

	validates_presence_of :name

	has_many :departments
	has_many :disciplines
end

