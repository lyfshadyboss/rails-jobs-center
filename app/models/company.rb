class Company < ActiveRecord::Base
  devise :database_authenticatable

  has_many :posts, dependent: :destroy
end
