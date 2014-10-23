class University < ActiveRecord::Base

	validates_presence_of :name, :qtdCampus, :address, :number, :district, :cep, :state, :city, :phoneFixed, :phoneFax

	has_many :campus

end


