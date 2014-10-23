class Teacher < ActiveRecord::Base
	validates_presence_of :name, :cpf, :rg, :dtBirth, :sex, :stateCivil, :phone, :cellphone, :state, :address, :number, :district, :cep

	has_many :disciplines
end
