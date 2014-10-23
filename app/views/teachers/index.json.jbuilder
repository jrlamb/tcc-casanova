json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :cpf, :rg, :dtBirth, :sex, :stateCivil, :phone, :cellphone, :state, :address, :number, :district, :cep, :certifications
  json.url teacher_url(teacher, format: :json)
end
