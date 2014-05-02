class Resume < ActiveRecord::Base
  belongs_to :student

  has_many :educations, dependent: :destroy
  has_many :glories, dependent: :destroy
  has_many :interests, dependent: :destroy
  has_many :sample_works, dependent: :destroy
  has_many :skills, dependent: :destroy
  has_many :work_experiences, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :delivers, dependent: :destroy

  accepts_nested_attributes_for :comments, :educations, :glories, :interests, :sample_works, :skills, :work_experiences,
                                :reject_if => :all_blank, :allow_destroy => true

  validates :title, presence: true
end
