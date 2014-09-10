json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :school, :displayname, :grade
  json.url teacher_url(teacher, format: :json)
end
