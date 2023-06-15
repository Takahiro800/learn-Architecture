require_relative 'string_display'
require_relative 'side_border'
require_relative 'full_border'

b1 = StringDisplay.new("Hello World.")
b2 = SideBorder.new(b1, "#")
b3 = FullBorder.new(b2);

b1.show
b2.show
b3.show

b4 = SideBorder.new(
  FullBorder.new(
    FullBorder.new(
      SideBorder.new(
        FullBorder.new(StringDisplay.new("Hello, World.")), '*'
      )
    )
  ), '*'
)

b4.show
