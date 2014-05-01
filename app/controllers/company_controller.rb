class CompanyController < ApplicationController
  before_action :authenticate_company!

  def index
    @resumes = Resume.order("updated_at DESC").last(10)
    @news = News.order("updated_at DESC").last(10)
    @browse_news_base_path = "/company/browse_news"
  end

  def search_resume
    @key_words = get_search_words(:key_words)
    @subject = get_search_words(:subject)
    @major = get_search_words(:major)

    @resumes = Resume.order("updated_at DESC").all
    @resumes = @resumes.where("title LIKE ?", "%#{@key_words}%") if @key_words

    @filter = []

    if @subject
      @resumes.each { |resume|
        if resume.student.subject != @subject.to_i
          @filter << resume
        end
      }
    end

    if @major
      @resumes.each { |resume|
        if resume.student.major != @major.to_i
          @filter << resume
        end
      }
    end

    @resumes -= @filter
    @resumes = @resumes.paginate(:page => params[:page])
  end

  def browse_resume
    @resume = Resume.find(params[:id])
    @student = @resume.student
  end

  def browse_news
    @news = News.find(params[:id])
  end

  def information
  end

  def commit_for_update
    result = current_company.update(company_params)

    redirect_to company_information_path,
                notice: result == true ? "更新成功！" : "更新失败！"
  end

  private

  def company_params
    params.require(:company).permit!
  end

  def get_search_words(key)
    value = params[key]

    if !value.nil?
      return nil if value.empty?
    end

    return value
  end
end
