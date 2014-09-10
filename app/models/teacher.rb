class Teacher < ActiveRecord::Base

def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		teacher_hash = row.to_hash
		teacher = Teacher.where(id: teacher_hash["id"])

		if teacher.count == 1
			teacher.first.update_attributes(teacher_hash)
		else
			Teacher.create!(teacher_hash)
		end
	end
end
end

		#teacher = find_by_id(row["id"]) ||new
		#teacher.attributes = row.to_hash.slice('name','school','displayname','grade')
		#teacher.save!
	#end
#end
#end