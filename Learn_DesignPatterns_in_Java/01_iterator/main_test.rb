require 'minitest/autorun'
require_relative 'main'

class MainTest < Minitest::Test
  def test_sample
    sum = Main.test(3, 5)
    assert_equal 8, sum
  end
end
