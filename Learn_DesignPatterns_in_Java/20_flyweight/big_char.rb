# frozen_string_literal: true

class BigChar
  def initialize(char_name)
    @char_name = char_name

    begin
      filename = "./texts/big" + char_name + ".txt"

      @font_data = File.read(filename)
    rescue => exception
      @font_data = char_name + "?"
    end
  end

  def print_out
    print @font_data
  end
end
