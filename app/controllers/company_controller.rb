class CompanyController < ApplicationController
  before_action :authenticate_company!

  def index
  end

  def information
  end

  def commit_for_update
    result = current_company.update(company_params)

    redirect_to company_information_path
  end

  private

  def company_params
    params.require(:company).permit!
  end
end
