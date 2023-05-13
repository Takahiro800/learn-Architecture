require_relative 'print'
require_relative 'banner'

class PrintBanner
  include Print

  def initialize(text)
    @banner = Banner.new(text)
  end

  def print_weak
    @banner.show_with_paren
  end

  def print_strong
    puts "*#{@banner.text}*"
  end
end
