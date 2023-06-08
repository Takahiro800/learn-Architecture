require_relative 'item'

class Link < Item
  def initialize(caption, url)
    super(caption)
    @url = url
  end
end
