class CompanyScalesController < ApplicationController
  layout 'admin'

  def new
    @company_scale = CompanyScale.new
  end

  def create
    @company_scale = CompanyScale.create(company_scale_params)
    @company_scale.save

    redirect_to admin_settings_path
  end

  def edit
    @company_scale = CompanyScale.find(params[:id])
  end

  def update
    @company_scale = CompanyScale.find(params[:id])
    @company_scale.update(company_scale_params)

    redirect_to admin_settings_path
  end

  def destroy
    @company_scale = CompanyScale.find(params[:id])
    @company_scale.destroy

    redirect_to admin_settings_path
  end

  private

  def company_scale_params
    params.require(:company_scale).permit!
  end
end