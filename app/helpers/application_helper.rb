module ApplicationHelper
  APP_MAME = 'BookShelf SNS'.freeze

  def page_title
    base_title = APP_MAME
    return base_title if @title.blank?
    "#{base_title} | #{@title}"
  end

  def flash_message(message, klass)
    content_tag(:div, class: "alert alert-#{klass}") do
      concat content_tag(:button, 'x', clsss: 'close', data: { dismiss: 'alert'})
      concat raw(message)
    end
  end
end
