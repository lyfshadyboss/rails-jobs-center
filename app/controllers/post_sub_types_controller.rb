class PostSubTypesController < ApplicationController
  layout 'admin'

  def new
    @post_sub_type = PostSubType.new
  end

  def create
    @post_sub_type = PostSubType.create(post_sub_type_params)
    @post_sub_type.save

    redirect_to admin_settings_path
  end

  def edit
    @post_sub_type = PostSubType.find(params[:id])
  end

  def update
    @post_sub_type = PostSubType.find(params[:id])
    @post_sub_type.update(post_sub_type_params)

    redirect_to admin_settings_path
  end

  def destroy
    @post_sub_type = PostSubType.find(params[:id])
    @post_sub_type.destroy

    redirect_to admin_settings_path
  end

  private

  def post_sub_type_params
    params.require(:post_sub_type).permit!
  end
end