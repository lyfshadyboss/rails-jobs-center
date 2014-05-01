class Company < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable

  has_many :posts, dependent: :destroy
  has_many :assets, dependent: :destroy
end
