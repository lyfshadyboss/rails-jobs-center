class Student < ActiveRecord::Base
  devise :database_authenticatable, :registerable

  has_many :resumes, dependent: :destroy

end
