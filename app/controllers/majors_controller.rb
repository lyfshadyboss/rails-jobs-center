class MajorsController < ApplicationController
  layout 'admin'

  def new
    @major = Major.new
  end

  def create
    @major = Major.create(major_params)
    @major.save

    redirect_to admin_settings_path
  end

  def edit
    @major = Major.find(params[:id])
  end

  def update
    @major = Major.find(params[:id])
    @major.update(major_params)

    redirect_to admin_settings_path
  end

  def destroy
    @major = Major.find(params[:id])
    @major.destroy

    redirect_to admin_settings_path
  end

  private

  def major_params
    params.require(:major).permit!
  end
end