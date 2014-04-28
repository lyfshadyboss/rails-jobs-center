class PostsController < ApplicationController
  before_action :ensure_variables

  layout 'company'

  def index
  end

  def show
    @post = @posts.find(params[:id])
  end

  def new
    @post = Post.new
    build_sub_attrs
  end

  def edit
    @post = @posts.find(params[:id])
    build_sub_attrs
  end

  def create
    @post = @posts.create(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to company_post_path(@post), notice: '创建成功！' }
      else
        format.html { render :new, notice: '创建失败！' }
      end
    end
  end

  def update
    @post = @posts.find(params[:id])

    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to company_post_path(@post), notice: '更新成功！' }
      else
        format.html { render :edit, notice: '更新失败！' }
      end
    end
  end

  def destroy
    @post = @posts.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to company_posts_path }
    end
  end

  private
    def ensure_variables
      @company = current_company
      @posts = @company.posts
    end

    def post_params
      params.require(:post).permit!
    end

  def build_sub_attrs
    @post = @post || Post.new

    @post.requirements.build
  end
end
