class StudentController < ApplicationController
  layout 'student'
  before_action :authenticate_student!

  def index
    @posts = Post.order("updated_at DESC").last(10)
    @news = News.order("updated_at DESC").last(10)
    @browse_news_base_path = "/student/browse_news"
  end

  def information
  end

  def search_post
    @post_title = get_search_words(:post_title)
    @post_type = get_search_words(:post_type)
    @post_sub_type = get_search_words(:post_sub_type)
    @company_name = get_search_words(:company_name)

    @posts = Post.order("updated_at DESC").all
    @posts = @posts.where("title LIKE ?", "%#{@post_title}%") if @post_title
    @posts = @posts.where("post_type = #{@post_type.to_i}") if @post_type
    @posts = @posts.where("post_sub_type = #{@post_sub_type.to_i}") if @post_sub_type

    @filter = []

    if @company_name
      @posts.each { |post|
        if post.company.name.index(@company_name).nil?
          @filter << post
        end
      }
    end

    @posts -= @filter
    @posts = @posts.paginate(:page => params[:page])
  end

  def browse_post
    @post = Post.find(params[:id])
    @company = @post.company
  end

  def browse_company
    @target_company = Company.find(params[:id])
    render 'company/overview'
  end

  def browse_news
    @news = News.find(params[:id])
  end

  def commit_for_update
    result = current_student.update(student_params)

    redirect_to student_information_path
  end

  def deliver_to_post
    post_id = params[:post][:id]
    resume_id = params[:selected_resume]

    deliver = Deliver.create(:resume_id => resume_id, :post_id => post_id)
    message = deliver.save ? "投递成功！" : "投递失败！"

    redirect_to :back, notice: message
  end

  private

  def student_params
    params.require(:student).permit!
  end

  def get_search_words(key)
    value = params[key]

    if !value.nil?
      return nil if value.empty?
    end

    return value
  end
end
