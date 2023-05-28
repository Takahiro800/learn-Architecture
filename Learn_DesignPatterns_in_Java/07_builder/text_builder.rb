class TextBuilder
  attr_accessor :sb

  def initialize
    @sb = []
  end

  def make_title(title)
    sb.append("==========================================")
    sb.append("『 #{title} 』")
  end

  def make_string(str)
    sb.append("🔸+#{str}")
  end

  def make_items(items)
    items.each do |item|
      sb.append("・ #{item}")
    end
  end

  def close
    sb.append("==========================================")
  end

  def result
    sb
  end
end
