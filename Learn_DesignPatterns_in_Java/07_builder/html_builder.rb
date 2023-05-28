class HTMLBuilder
  attr_accessor :sb, :filename

  def initialize
    @sb = []
  end

  def make_title(title)
    filename = title + ".html"
    sb.append("<!DOCTYPE html>")
    sb.append("<html>")
    sb.append("<head><title>")
    sb.append("title")
    sb.append("</title></head>")
    sb.append("<body>")
    sb.append("<h1>")
    sb.append("title")
    sb.append("</h1>")
  end

  def make_string(str)
    sb.append("<p> + #{str} + </p>")
  end

  def make_items(items)
    sb.append("<ul>")
    items.each do |item|
      sb.append("<li>#{item}</li>")
    end
    sb.append("</ul>")
  end

  def close
    sb.append("</body>")
    sb.append("</html>")
  end

  def result
    puts sb
    filename
  end
end
