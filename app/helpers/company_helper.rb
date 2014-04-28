module CompanyHelper
  def company_browse_resume_path(resume)
    "/company/browse_resume/#{resume.id}"
  end
end
