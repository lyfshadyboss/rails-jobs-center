class Asset < ActiveRecord::Base
  belongs_to :student
  belongs_to :company
end
