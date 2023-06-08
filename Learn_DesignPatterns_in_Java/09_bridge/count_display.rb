require_relative 'display'

class CountDisplay < Display
  def initialize(impl)
    super(impl)
  end

  def multi_display(times)
    open
    times.times { print }
    close
  end
end
