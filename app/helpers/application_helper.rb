module ApplicationHelper

  GENDER_COLLECTION = [['男', 0], ['女', 1]]
  GRADE_COLLECTION = [['大一', 0], ['大二', 1], ['大三', 2], ['大四', 3]]
  SUBJECT_COLLECTION = [['材料学院', 0], ['计算机学院', 1], ['通信工程学院', 2], ['人文学院', 3]]
  MAJOR_COLLECTION = [['高分子材料', 0], ['软件工程', 1], ['电缆通信工程', 2], ['欧洲文学', 3], ['亚洲文学', 4]]

  def full_title(page_title)
    base_title = "毕业生就业信息管理系统"

    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def gender_collection
    GENDER_COLLECTION
  end

  def grade_collection
    GRADE_COLLECTION
  end

  def subject_collection
    SUBJECT_COLLECTION
  end

  def major_collection
    MAJOR_COLLECTION
  end

  def month_names_zh
    %w(一 二 三 四 五 六 七 八 九 十 十一 十二)
  end

end
