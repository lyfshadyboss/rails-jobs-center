class Student < ActiveRecord::Base
  devise :database_authenticatable
end
