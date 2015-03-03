module ApplicationHelper
  def navi_li(title, path, match_controller)
    "<li #{ 'class="active"' if match_controller == params[:controller] }>#{link_to title, path}</li>".html_safe
  end

  def moretext_title(amount = 3, limit = 24)
    JSON(open("http://more.handlino.com/sentences.json?n=#{amount}&limit=#{limit}").read)["sentences"]
  end

  def moretext_content(amount = 3)
    JSON(open("http://more.handlino.com/sentences.json?n=#{amount}").read)["sentences"]
  end
end
