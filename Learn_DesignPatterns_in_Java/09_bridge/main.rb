require_relative 'display'
require_relative 'count_display'
require_relative 'string_dispaly_impl'

d1 = Display.new(StringDisplayImpl.new("Hello, Japan."))
d2 = Display.new(StringDisplayImpl.new("Hello, World."))
d3 = CountDisplay.new(StringDisplayImpl.new("HEllo, Universe."))

d1.display
d2.display
d3.multi_display(5)
