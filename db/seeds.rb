# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin.create(:email => "admin1@ntu.cn", :password => '11111111', :password_confirmation => "11111111")
Admin.create(:email => "admin2@ntu.cn", :password => '22222222', :password_confirmation => "22222222")
Admin.create(:email => "admin3@ntu.cn", :password => '33333333', :password_confirmation => "33333333")

Gender.create(:name => '男')
Gender.create(:name => '女')

Grade.create(:name => '大一')
Grade.create(:name => '大二')
Grade.create(:name => '大三')
Grade.create(:name => '大四')

Subject.create(:name => '计算机学院')
Subject.create(:name => '电气工程学院')
Subject.create(:name => '电子信息学院')


Major.create(:name => '软件工程')
Major.create(:name => '计算机科学与技术')
Major.create(:name => '光伏')
Major.create(:name => '电子集成')
Major.create(:name => '网络工程')
Major.create(:name => '信息技术')
Major.create(:name => '自动化')

CompanyType.create(:name => '民营企业')
CompanyType.create(:name => '外资企业')
CompanyType.create(:name => '合资企业')

CompanyScale.create(:name => '1-49人')
CompanyScale.create(:name => '50 -99人')
CompanyScale.create(:name => '100-499人')
CompanyScale.create(:name => '500-999 人')
CompanyScale.create(:name => '1000 人以上')

PostType.create(:name => 'IT/通信/互联网')
PostType.create(:name => '金融业')
PostType.create(:name => '房地产/建筑业')
PostType.create(:name => '文体教育/工艺美术')
PostType.create(:name => '生产加工/制造业')
PostType.create(:name => '交通运输/物流/仓储')
PostType.create(:name => '服务业')

PostSubType.create(:name => '互联网/电子商务')
PostSubType.create(:name => '计算机软件')
PostSubType.create(:name => '计算机硬件')
PostSubType.create(:name => '通信/电信/网络设备')
PostSubType.create(:name => '基金/证券/期货')
PostSubType.create(:name => '保险')
PostSubType.create(:name => '银行')
PostSubType.create(:name => '房地产/建筑')
PostSubType.create(:name => '家居/室内设计')
PostSubType.create(:name => '教育/培训/学校')
PostSubType.create(:name => '工艺美术/礼品')
PostSubType.create(:name => '汽车/加工制造业')
PostSubType.create(:name => '交通/运输')
PostSubType.create(:name => '物流/仓储')
PostSubType.create(:name => '医疗/护理')
PostSubType.create(:name => '酒店/餐饮')
PostSubType.create(:name => '旅游/度假')