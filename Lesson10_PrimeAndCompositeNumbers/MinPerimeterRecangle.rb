=begin
MinPerimeterRectangle
Find the minimal perimeter of any rectangle whose area equals N.
=end

require 'minitest/autorun'
require 'complex'

def solution(n)
  check_start = Math.sqrt(n).floor

  check_start.downto(1) do |side_1|
    next if n % side_1 != 0
    side_2 = n / side_1

    return (side_1 + side_2) * 2
  end
end

class MinPerimeterRectangleTest < Minitest::Test
  def test_solution
    assert_equal 22, solution(30)
  end
end
