require_relative "../factory/page"
require_relative "../factory/item"

class ListPage < Page
  def initialize(title, author)
    super(title, author)
  end

  def make_html
    sb = []
    sb.append("<!DOCTYPE html>")
    sb.append("<html><head><title>")
    sb.append(@title)
    sb.append("</title></head>")
    sb.append("<body>")
    sb.append("<h1>#{@title}</h1>")
    sb.append("</ul>")

    @content.each do |item|
      sb.append(item.make_html)
    end

    sb.append("</ul>")
    sb.append("<hr><address>#{@author}</address>")
    sb.append("</address>")
    sb.append("</body></html>")
    sb
  end
end
