class Student < ActiveRecord::Base
  devise :database_authenticatable, :registerable

  has_many :resumes, dependent: :destroy
  has_many :assets, dependent: :destroy

end
