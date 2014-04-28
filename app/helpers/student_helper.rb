module StudentHelper
  def student_browse_post_path(post)
    "/student/browse_post/#{post.id}"
  end
end
