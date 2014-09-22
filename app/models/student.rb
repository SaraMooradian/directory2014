class Student < ActiveRecord::Base
def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		student_hash = row.to_hash
		student = Student.where(id: student_hash["id"])

		if student.count == 1
			student.first.update_attributes(student_hash)
		else
			Student.create!(student_hash)
		end
	end
end
end
