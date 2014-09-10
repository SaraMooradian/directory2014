class Staff < ActiveRecord::Base
def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		staff_hash = row.to_hash
		staff = Staff.where(id: staff_hash["id"])

		if staff.count == 1
			staff.first.update_attributes(staff_hash)
		else
			Staff.create!(staff_hash)
		end
	end
end
end

