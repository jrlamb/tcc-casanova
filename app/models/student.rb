class Student < ActiveRecord::Base

	has_many :enrollments
	
	validates_presence_of :name, :cpf, :rg, :dtBirth, :sex, :stateCivil, :phone, :cellphone, :state, :address, :number, :district, :cep

end
