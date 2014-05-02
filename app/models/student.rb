class Student < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable

  has_many :resumes, dependent: :destroy
  has_many :assets, dependent: :destroy

  has_many :delivers, through: :resumes

end
