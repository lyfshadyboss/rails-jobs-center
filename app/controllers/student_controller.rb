class StudentController < ApplicationController
  before_action :authenticate_student!

  def index
  end

  def information
  end

  def search_post
    @posts = Post.all
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
end
