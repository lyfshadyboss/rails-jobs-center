class NewsController < ApplicationController
  layout 'admin'

  def index
    @news = News.order("updated_at DESC").paginate(:page => params[:page])
  end

  def show
    @news = News.find(params[:id])
    @admin = current_admin
  end

  def new
    @news = News.new
    @admin = current_admin
  end

  def create
    @news = News.create(news_params)
    if @news.save
      redirect_to admin_news_index_path
    else
      render 'new'
    end
  end

  def edit
    @news = News.find(params[:id])
    @admin = current_admin
  end

  def update
    @news = News.find(params[:id])
    if @news.update(news_params)
      redirect_to admin_news_index_path
    else
      render 'edit'
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy

    redirect_to admin_news_index_path
  end

  private

  def news_params
    params.require(:news).permit!
  end
end
