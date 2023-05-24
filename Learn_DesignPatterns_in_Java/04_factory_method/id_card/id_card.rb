class IdCard
  include Product

  def initialize(owner)
    puts "#{owner}のカードを作ります"
    @owner = owner
  end

  def use
    puts "#{self}を使います"
  end

  def get_owner
    owner
  end
end
