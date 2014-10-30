class Department < ActiveRecord::Base

	validates_presence_of :name, :phone, :campu_id
  	belongs_to :campu
  	has_many :courses
  	
end
