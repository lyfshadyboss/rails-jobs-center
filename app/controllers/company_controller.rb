class CompanyController < ApplicationController
  before_action :authenticate_company!

  def index
  end

  def search_resume
    @resumes = Resume.all
  end

  def information
  end

  def commit_for_update
    result = current_company.update(company_params)

    redirect_to company_information_path,
                notice: result == true ? "更新成功！" : "更新失败！"
  end

  private

  def company_params
    params.require(:company).permit!
  end
end
