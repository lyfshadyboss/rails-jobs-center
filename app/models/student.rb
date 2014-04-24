class Student < ActiveRecord::Base
  devise :database_authenticatable, :registerable

  has_many :resumes, dependent: :destroy
  has_many :educations, dependent: :destroy
  has_many :glories, dependent: :destroy
  has_many :interests, dependent: :destroy
  has_many :sample_works, dependent: :destroy
  has_many :skills, dependent: :destroy
  has_many :work_experiences, dependent: :destroy

end
