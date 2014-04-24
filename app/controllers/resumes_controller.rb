class ResumesController < ApplicationController
  before_action :ensure_variables

  layout 'student'

  def index
  end

  def new
    @resume = Resume.new

    @resume.educations.build
    @resume.glories.build
    @resume.interests.build
    @resume.skills.build
    @resume.sample_works.build
    @resume.work_experiences.build
  end

  def create
    @resumes.create(resume_params)

    redirect_to student_resumes_path
  end

  def edit
    @resume = @resumes.find(params[:id])
  end

  def update
    @resume = @resumes.find(params[:id])
    @resume.update(resume_params)

    redirect_to student_resumes_path
  end

  def destroy
    @resume = @resumes.find(params[:id])
    @resume.destroy

    redirect_to student_resumes_path
  end

  private

  def resume_params
    params.require(:resume).permit!
  end

  def ensure_variables
    @student = current_student
    @resumes = @student.resumes
  end
end
