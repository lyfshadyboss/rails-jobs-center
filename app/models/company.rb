class Company < ActiveRecord::Base
  devise :database_authenticatable, :registerable

  has_many :posts, dependent: :destroy
end
