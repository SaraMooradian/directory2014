json.array!(@staffs) do |staff|
  json.extract! staff, :id, :name, :school, :displayname, :grade
  json.url staff_url(staff, format: :json)
end
