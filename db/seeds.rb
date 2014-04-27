# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Admin.create(:email => "admin@ntu.cn", :password => '11111111', :password_confirmation => "11111111")

5.times do |i|
  CompanyType.create(name: "Type #{i + 1}")
end

5.times do |i|
  CompanyScale.create(name: "Scale #{i + 1}")
end