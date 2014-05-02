class Deliver < ActiveRecord::Base
  belongs_to :post
  belongs_to :resume

  validates :post_id, :resume_id, presence: true

end
