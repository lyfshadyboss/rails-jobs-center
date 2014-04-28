module ApplicationHelper

  def full_title(page_title)
    base_title = "毕业生就业信息管理系统"

    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def month_names_zh
    %w(一 二 三 四 五 六 七 八 九 十 十一 十二)
  end

end
