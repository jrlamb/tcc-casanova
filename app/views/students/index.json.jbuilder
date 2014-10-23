json.array!(@students) do |student|
  json.extract! student, :id, :name, :cpf, :rg, :dtBirth, :sex, :stateCivil, :phone, :cellphone, :state, :address, :number, :district, :cep, :certifications
  json.url student_url(student, format: :json)
end
