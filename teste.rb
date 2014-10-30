require 'rest_client'
require 'json'

 puts "Adicionando um nova Universidade"
 
 response = RestClient.post "http://localhost:3000/universities.json", 
 			{ 'name' => 'Faculdade Tecnologia Machado de Assis', 'qtdCampus' => 3, 'address' => 'Rua Bahia',
 			  'number' => '215','district' => 'Centro', 'cep' => 85885000, 'state' => 'Paraná', city: 'Matelândia',
 			  'phoneFixed' => '(45) 3240-8543',  'phoneFax' => '(45) 3240-8544' }.to_json, 
 			:content_type => :json, :accept => :json

 puts response 

 puts "Listando todas as Universidades"

 response = RestClient.get("http://localhost:3000/universities.json")
 universities = JSON.parse(response)
 universities.each do |university|
   puts "#{university['id']} - #{university['name']} - #{university['address']} - #{university['district']} - #{university['state']} - #{university['city']} - #{university['phoneFixed']}"
 end



