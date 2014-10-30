class Course < ActiveRecord::Base

	validates_presence_of :name

	belongs_to :department
	has_many :disciplines
end

