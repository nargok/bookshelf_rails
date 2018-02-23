module ApplicationHelper
  APP_MAME = 'BookShelf SNS'.freeze

  def page_title
    base_title = APP_MAME
    return base_title if @title.blank?
    "#{base_title} | #{@title}"
  end
end
