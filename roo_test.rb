require 'rubygems'
require 'roo'

oo = Roo::OpenOffice.new("./data.ods")
oo.default_sheet = oo.sheets.first

2.upto(oo.last_row) do |line|
  name = oo.cell(line, 'A')
  school_id = oo.cell(line, 'B')
  gender = oo.cell(line, 'D')
  major = oo.cell(line, 'E')
  subject = oo.cell(line, 'F')
  grade = oo.cell(line, 'G')
  age = oo.cell(line, 'H')
  social_id = oo.cell(line, 'I')
  telephone = oo.cell(line, 'J')
  qq = oo.cell(line, 'K')
  email = oo.cell(line, 'L')
  address = oo.cell(line, 'M')
  puts "#{name} #{school_id} #{gender} #{major} #{subject} #{grade} #{age} #{social_id} #{telephone} #{qq} #{email} #{address}"
end

