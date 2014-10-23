json.array!(@disciplines) do |discipline|
  json.extract! discipline, :id, :name, :period, :loadHourly, :course_id, :teacher_id, :matrix, :integer, :preRequisite
  json.url discipline_url(discipline, format: :json)
end
