class Banner
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def show_with_paren
    puts "(#{@text})"
  end
end
