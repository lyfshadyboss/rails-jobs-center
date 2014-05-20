module StudentHelper
  def student_browse_post_path(post)
    "/student/browse_post/#{post.id}"
  end

  def student_browse_company_path(company)
    "/student/browse_company/#{company.id}"
  end
end
