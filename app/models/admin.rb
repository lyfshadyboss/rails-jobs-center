class Admin < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable
end
