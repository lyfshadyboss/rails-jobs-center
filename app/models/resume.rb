class Resume < ActiveRecord::Base
  belongs_to :student

  has_many :educations, dependent: :destroy
  has_many :glories, dependent: :destroy
  has_many :interests, dependent: :destroy
  has_many :sample_works, dependent: :destroy
  has_many :skills, dependent: :destroy
  has_many :work_experiences, dependent: :destroy

  accepts_nested_attributes_for :educations, :glories, :interests, :sample_works, :skills, :work_experiences,
                                :reject_if => :all_blank, :allow_destroy => true
end
