class Company < ActiveRecord::Base
  devise :database_authenticatable
end
