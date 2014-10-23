class Campu < ActiveRecord::Base
	
	validates_presence_of :name, :address, :number, :district, :cep, :state, :city, :phoneFixed, :phoneFax, :university_id

	belongs_to :university
end
