module ApplicationHelper
  def full_title(page_title)
    base_title = "毕业生就业信息管理系统"

    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
