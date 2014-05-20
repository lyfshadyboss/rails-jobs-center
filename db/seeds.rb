# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin.create(:email => "admin@ntu.cn", :password => '11111111', :password_confirmation => "11111111")

Gender.create(:name => '男')
Gender.create(:name => '女')

Grade.create(:name => '大一')
Grade.create(:name => '大二')
Grade.create(:name => '大三')
Grade.create(:name => '大四')

Subject.create(:name => '计算机学院')

Major.create(:name => '软件工程')

CompanyType.create(:name => '民营企业')

CompanyScale.create(:name => '50 人以下')

PostType.create(:name => 'IT')

PostSubType.create(:name => '计算机硬件')
