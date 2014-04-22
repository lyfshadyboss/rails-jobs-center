class Student < ActiveRecord::Base
  devise :database_authenticatable, :registerable
end
