class Page
  # attr_accessor :content

  def initialize(title, author)
    @title = title
    @author = author
    @content = []
  end

  def add(item)
    @content << item
  end

  def output(filename)
    File.write(filename, make_html)
    puts "#{filename} を作成しました"
  rescue e
    puts e.message
  end

  def make_html
    raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません")
  end
end
