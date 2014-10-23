json.array!(@campus) do |campu|
  json.extract! campu, :id, :name, :address, :number, :district, :cep, :state, :city, :phoneFixed, :phoneFax, :university_id
  json.url university_campu_url(campu.university.id, campu, format: :json)
end

 