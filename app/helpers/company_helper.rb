module CompanyHelper
  def company_browse_resume_path(resume)
    "/company/browse_resume/#{resume.id}"
  end

  def company_browse_student_path(student)
    "/company/browse_student/#{student.id}"
  end
end
