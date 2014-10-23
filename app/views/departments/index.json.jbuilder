json.array!(@departments) do |department|
  json.extract! department, :id, :name, :phone, :course_id
  json.url department_url(department, format: :json)
end
