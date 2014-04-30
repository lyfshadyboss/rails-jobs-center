require 'fileutils'

class Company::AssetsController < ApplicationController
  layout 'company'

  def index
    @assets = current_company.assets
  end

  def edit
    @owner = current_company
    @asset = Asset.find(params[:id])
  end

  def update
    @asset = Asset.find(params[:id])
    @asset.update(asset_params)

    redirect_to company_assets_path
  end

  def new
    @owner = current_company
    @asset = Asset.new
  end

  def create
    uploaded_io = params[:asset][:file_name]

    if uploaded_io
      suffix = uploaded_io.original_filename.split('.')[-1] || ''
      uploaded_io.original_filename = Time.now.to_i.to_s + ".#{suffix}"
      params[:asset][:file_name] = uploaded_io.original_filename
      upload uploaded_io
    end

    @asset = current_company.assets.create(asset_params)
    @asset.save

    redirect_to company_assets_path
  end

  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy

    if @asset.file_name
      remove_asset @asset.file_name
    end

    redirect_to company_assets_path
  end

  def download
    @asset = Asset.find(params[:id])
    if @asset.file_name
      send_file File.open(Rails.root.join('public', 'uploads', 'company', @asset.file_name))
    end
  end

  private

  def asset_params
    params.require(:asset).permit!
  end

  def upload(uploaded_io)
    File.open(Rails.root.join('public', 'uploads', 'company', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
  end

  def remove_asset(file_name)
    FileUtils.rm(Rails.root.join('public', 'uploads', 'company', file_name))
  end

end
