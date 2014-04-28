class StudentController < ApplicationController
  before_action :authenticate_student!

  def index
  end

  def information
  end

  def search_post
    @post_title = get_search_words(:post_title)
    @post_type = get_search_words(:post_type)
    @post_sub_type = get_search_words(:post_sub_type)
    @company_name = get_search_words(:company_name)

    @posts = Post.all
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
  end

  def browse_post
    @post = Post.find(params[:id])
    @company = @post.company
  end

  def commit_for_update
    result = current_student.update(student_params)

    redirect_to student_information_path
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
