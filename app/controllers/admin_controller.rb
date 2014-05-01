class AdminController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!

  def index
  end

  def settings
    @subjects = Subject.order("updated_at DESC").all
    @majors = Major.order("updated_at DESC").all
    @company_types = CompanyType.order("updated_at DESC").all
    @company_scales = CompanyScale.order("updated_at DESC").all
    @post_types = PostType.order("updated_at DESC").all
    @post_sub_types = PostSubType.order("updated_at DESC").all
  end
end
