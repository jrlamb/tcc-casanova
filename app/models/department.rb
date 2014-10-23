class Department < ActiveRecord::Base

	validates_presence_of :name, :phone, :course_id
  	belongs_to :course
  	
end
