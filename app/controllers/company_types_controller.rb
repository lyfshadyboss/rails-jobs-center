class CompanyTypesController < ApplicationController
  layout 'admin'

  def new
    @company_type = CompanyType.new
  end

  def create
    @company_type = CompanyType.create(company_type_params)
    @company_type.save

    redirect_to admin_settings_path
  end

  def edit
    @company_type = CompanyType.find(params[:id])
  end

  def update
    @company_type = CompanyType.find(params[:id])
    @company_type.update(company_type_params)

    redirect_to admin_settings_path
  end

  def destroy
    @company_type = CompanyType.find(params[:id])
    @company_type.destroy

    redirect_to admin_settings_path
  end

  private

  def company_type_params
    params.require(:company_type).permit!
  end
end