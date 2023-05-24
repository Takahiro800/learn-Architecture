require_relative 'abstract_display'
require_relative 'char_display'
require_relative 'string_display'

d1 = CharDisplay.new("H")
d1.display

d2 = StringDisplay.new("Hello, World")
d2.display
