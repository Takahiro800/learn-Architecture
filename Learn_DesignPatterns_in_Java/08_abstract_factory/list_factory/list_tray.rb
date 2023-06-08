require_relative "../factory/tray"
require_relative "../factory/item"

class ListTray < Tray
  def initialize(caption)
    super(caption)
  end

  def make_html
    sb = []
    sb.append("<li>")
    sb.append(@caption)
    sb.append("<ul>")
    @tray.each do |item|
      sb.append(item.make_html)
    end
    sb.append("</ul>")
    sb.append("</li>")
    sb
  end
end
