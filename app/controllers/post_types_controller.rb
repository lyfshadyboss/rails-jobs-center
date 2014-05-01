class PostTypesController < ApplicationController
  layout 'admin'

  def new
    @post_type = PostType.new
  end

  def create
    @post_type = PostType.create(post_type_params)
    @post_type.save

    redirect_to admin_settings_path
  end

  def edit
    @post_type = PostType.find(params[:id])
  end

  def update
    @post_type = PostType.find(params[:id])
    @post_type.update(post_type_params)

    redirect_to admin_settings_path
  end

  def destroy
    @post_type = PostType.find(params[:id])
    @post_type.destroy

    redirect_to admin_settings_path
  end

  private

  def post_type_params
    params.require(:post_type).permit!
  end
end