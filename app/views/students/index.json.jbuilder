json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :last_name, :school, :grade, :teacher, :nickname, :teacher, :family_key
  json.url student_url(student, format: :json)
end
