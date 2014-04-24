class StudentController < ApplicationController
  before_action :authenticate_student!

  def index
  end

  def information
  end

  def commit_for_update
    student = Student.find_by_email current_student.email
    result = student.update(student_params)
  end

  private

  def student_params
    params.require(:student).permit!
  end
end
