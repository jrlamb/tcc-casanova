json.array!(@universities) do |university|
  json.extract! university, :id, :name, :qtdCampus, :address, :number, :district, :cep, :state, :city, :phoneFixed, :phoneFax
  json.url university_url(university, format: :json)
end
