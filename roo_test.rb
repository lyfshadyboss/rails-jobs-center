require 'rubygems'
require 'roo'

oo = Roo::OpenOffice.new("./data.ods")
oo.default_sheet = oo.sheets.first
2.upto(oo.last_row) do |line|
	name = oo.cell(line, 'A')
	subject = oo.cell(line, 'B')
	major = oo.cell(line, 'C')
	grade = oo.cell(line, 'D')
	gender = oo.cell(line, 'E')
	age = oo.cell(line, 'F')
	social_id = oo.cell(line, 'G')
	school_id = oo.cell(line, 'H')
	self_des = oo.cell(line, 'I')
	teacher_des = oo.cell(line, 'J')
	telephone = oo.cell(line, 'K')
	qq = oo.cell(line, 'L')
	email = oo.cell(line, 'M')
	puts "#{name} #{subject} #{major} #{grade} #{gender} #{age} #{social_id} #{school_id} #{self_des} #{teacher_des} #{telephone} #{qq} #{email}"
end

