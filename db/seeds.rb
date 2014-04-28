# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Admin.create(:email => "admin@ntu.cn", :password => '11111111', :password_confirmation => "11111111")

Gender.create(:name => '男')
Gender.create(:name => '女')

Grade.create(:name => '大一')
Grade.create(:name => '大二')
Grade.create(:name => '大三')
Grade.create(:name => '大四')