module ApplicationHelper
  def full_title(page_title = '')
    base_title = "task suporter"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
